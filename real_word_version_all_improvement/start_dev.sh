#!/bin/bash

# MiniWord Server Development Start Script (Foreground)
echo "🚀 Starting MiniWord server in DEVELOPMENT MODE (foreground)..."

# Navigate to this script's directory (so we serve THIS project with miniword_icons_set2 / miniword_buttons_png)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Use port 8016
PORT=8016

# Check if port is already in use
echo "Checking port $PORT..."
PORT_CHECK=$(netstat -tln 2>/dev/null | grep ":$PORT " || lsof -i ":$PORT" 2>/dev/null)
if [ ! -z "$PORT_CHECK" ]; then
    echo "⚠️  Port $PORT is already in use:"
    echo "$PORT_CHECK"
    echo ""
    echo "Please run ./stop.sh first to stop the existing server."
    exit 1
fi

# Start the server in FOREGROUND (not background)
echo "Starting server on port $PORT in FOREGROUND..."
echo "📡 Server will show all requests and debug info in this terminal"
echo "🌐 Server URL: http://172.22.225.5:$PORT/index.html"
echo "🌐 Local URL: http://localhost:$PORT/index.html"
echo ""
echo "💡 Development Tips:"
echo "   • All server logs will appear in this terminal"
echo "   • Press Ctrl+C to stop the server"
echo "   • Open browser console (F12) to see JavaScript debug logs"
echo "   • Use Ctrl+F5 in browser to force refresh"
echo ""
echo "🔍 DEBUGGING CLIPBOARD OPERATIONS:"
echo "   • Look for 🔪 (cut), 📋 (copy), 📥 (paste), ✏️ (insert) emojis in browser console"
echo "   • All clipboard operations now have detailed logging"
echo "   • Check browser console for step-by-step debugging info"
echo ""
echo "Starting server now..."
echo "=========================================="

# Start server in foreground (no & at the end)
python3 -m http.server $PORT --bind 0.0.0.0
