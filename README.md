# Java Chat App (Console-based)

This is a simple group chat application built using Java sockets. It allows multiple users to chat in real-time through the terminal.

## 🔧 Features

- User registration and login system (stored locally in `users.txt`)
- Timestamps for every message
- Graceful exit with `/exit` command
- Broadcast messages to all connected clients
- Console UI with clean formatting
- Multi-threaded server to handle multiple users simultaneously

## 🚀 How to Run

### 1. Compile the Code

```bash
cd Chat_app/src
javac chat/*.java
