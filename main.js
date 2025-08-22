const { app, BrowserWindow, ipcMain } = require('electron');
const path = require('path');

let mainWindow;
let chatWindow;

function createMainWindow() {
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    },
    title: 'Chat App - Main Window'
  });

  mainWindow.loadFile('index.html');

  // Open DevTools in development
  if (process.argv.includes('--dev')) {
    mainWindow.webContents.openDevTools();
  }
}

function createChatWindow() {
  chatWindow = new BrowserWindow({
    width: 400,
    height: 500,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    },
    title: 'Chat Window',
    resizable: true,
    minimizable: true,
    maximizable: false
  });

  chatWindow.loadFile('chat.html');

  // Open DevTools in development
  if (process.argv.includes('--dev')) {
    chatWindow.webContents.openDevTools();
  }

  chatWindow.on('closed', () => {
    chatWindow = null;
  });
}

app.whenReady().then(createMainWindow);

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createMainWindow();
  }
});

// IPC handler for opening chat window
ipcMain.handle('open-chat-window', () => {
  if (!chatWindow) {
    createChatWindow();
  } else {
    chatWindow.focus();
  }
});

// IPC handler for sending messages
ipcMain.handle('send-message', (event, message) => {
  if (chatWindow) {
    chatWindow.webContents.send('new-message', message);
  }
  return { success: true };
});
