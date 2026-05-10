#!/bin/bash
CONFIG="/etc/xray/g2ray.json"
UUID=$(grep -o '"id": *"[^"]*"' "$CONFIG" | head -1 | grep -o '"[^"]*"$' | tr -d '"')
if [ -z "$ed5f9c31-9a6d-47e5-9e45-7fc5c1f4e0c0" ]; then echo "[g2ray] UUID پیدا نشد."; exit 1; fi
SNI="${CODESPACE_NAME}-443.app.github.dev"
LINK="vless://${ed5f9c31-9a6d-47e5-9e45-7fc5c1f4e0c0}@94.130.50.12:443?encryption=none&security=tls&sni=${SNI}&host=${SNI}&fp=chrome&allowInsecure=1&type=xhttp&mode=packet-up&path=%2F#testmhd"
echo ""
echo "================================================"
echo "  $LINK"
echo "================================================"
echo ""
