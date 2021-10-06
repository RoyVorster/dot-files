#!/bin/zsh
function nordvpn-reset {
    ps aux | grep nordvpn | awk '{print $2}' | xargs -I{} sudo kill -9 {};
    sudo systemctl start nordvpnd;
    nordvpn c;
}
