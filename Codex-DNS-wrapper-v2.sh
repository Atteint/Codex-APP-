#!/bin/bash
# === 包装脚本（DNS加速）===
HOST_RULES="MAP api.openai.com 127.0.0.1, \
MAP auth.openai.com 127.0.0.1, \
MAP oauth.openai.com 127.0.0.1, \
MAP api.auth.openai.com 127.0.0.1, \
MAP ab.chatgpt.com 127.0.0.1, \
MAP cdn.openai.com 127.0.0.1, \
MAP chat.openai.com 127.0.0.1, \
MAP chatgpt.com 127.0.0.1, \
MAP persistent.oaistatic.com 127.0.0.1, \
MAP platform.openai.com 127.0.0.1"
APP_BIN="/Applications/Codex.app/Contents/MacOS/Codex.real"
exec "$APP_BIN" "--host-resolver-rules=$HOST_RULES" "$@"
