#!/bin/sh

export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5

# touch pad on a action
if ( grep -q synaptics /var/log/Xorg.0.log ); then
    if [ -x /usr/bin/synclient ]; then
        /usr/bin/synclient TapButton1=1 LBCornerButton=2 RBCornerButton=3 MaxTapTime=140 \
                           SingleTapTimeout=140 MaxDoubleTapTime=140 VertEdgeScroll=1
    fi
fi

~/.screenlayout/a.sh
fcitx-autostart &
exec dbus-launch --sh-syntax --exit-with-session i3
#exec i3
