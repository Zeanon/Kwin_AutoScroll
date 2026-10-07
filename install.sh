#!/bin/bash

cmake -S . -B build     -G Ninja     -DCMAKE_BUILD_TYPE=Release
cmake --build build -j$(nproc)

sudo mv build/bin/kwin/effects/plugins/autoscroll.so /usr/lib/x86_64-linux-gnu/qt6/plugins/kwin/effects/plugins/
sudo cp build/bin/kwin/effects/configs/kwin_autoscroll_config.so /usr/lib/x86_64-linux-gnu/qt6/plugins/kwin/effects/configs/

sudo chmod 644 /usr/lib/x86_64-linux-gnu/qt6/plugins/kwin/effects/plugins/autoscroll.so
sudo chmod 644 /usr/lib/x86_64-linux-gnu/qt6/plugins/kwin/effects/configs/kwin_autoscroll_config.so

