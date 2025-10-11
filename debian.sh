#!/data/data/com.termux/files/usr/bin/bash

kill -9 $(pgrep -f "termux.x11") 2>/dev/null

pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1

export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &

sleep 3

am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity > /dev/null 2>&1
sleep 1

# Detect desktop environment and launch accordingly
proot-distro login debian --shared-tmp -- /bin/bash -c '
  export PULSE_SERVER=127.0.0.1
  export XDG_RUNTIME_DIR=${TMPDIR}
  if command -v startxfce4 >/dev/null 2>&1; then
    su - user -c "env DISPLAY=:0 startxfce4"
  elif command -v cinnamon-session >/dev/null 2>&1; then
    su - user -c "env DISPLAY=:0 cinnamon-session"
  else
    echo "No supported desktop environment found (XFCE4 or Cinnamon). Please install one and try again."
    exit 1
  fi
'

exit 0
