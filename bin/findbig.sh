find /Users/flip \( \( -wholename './.Trash' -o -wholename './Desktop' \) -prune \) -o \( -size +5M -exec du -s {} \; \) | perl -ne 's!([^\w\.\-/\n\r])!\\$1!g ; print' >/slice/var/log/du-bigfiles-`datename`.txt
