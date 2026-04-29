#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# Load env vars
export $(grep -v '^#' .env | xargs) 2>/dev/null || true

echo "[DaemonCraft] Stopping old processes..."
pkill -f "node server.js" 2>/dev/null || true
fuser -k 3001/tcp 2>/dev/null || true
fuser -k 3002/tcp 2>/dev/null || true
fuser -k 25565/tcp 2>/dev/null || true
sleep 1

echo "[DaemonCraft] Starting bot server (port ${API_PORT})..."
cd agents/bot
nohup node server.js > /tmp/daemoncraft-bot.log 2>&1 &
cd ../..
sleep 3

echo "[DaemonCraft] Starting Minecraft server..."
docker-compose up -d --remove-orphans minecraft

echo "[DaemonCraft] Done. Logs:"
echo "  Bot:    tail -f /tmp/daemoncraft-bot.log"
echo "  MC:     docker logs -f daemoncraft-minecraft"
echo "  Voice:  http://localhost:${API_PORT}/voice"
echo "  API:    http://localhost:${API_PORT}/health"
