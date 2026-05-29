#!/bin/bash
set -e

echo "🚀 Starting GPT Researcher with SearXNG..."
echo ""

# Start all services
docker compose -f docker-compose.local.yml up --build -d

echo ""
echo "⏳ Waiting for services to start..."
sleep 5

echo ""
echo "✅ Services started!"
echo "   📡 SearXNG:        http://localhost:8888"
echo "   🔬 GPT Researcher: http://localhost:8000"
echo "   🌐 Frontend:       http://localhost:3000"
echo ""

# Open frontend in browser
open http://localhost:3000 2>/dev/null || true

# Follow logs
docker compose -f docker-compose.local.yml logs -f