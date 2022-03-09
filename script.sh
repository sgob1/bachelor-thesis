# Installazione delle dipendenze
sudo dnf -y install sed make cmake git gcc gcc-c++ gcc-arm-linux-gnu avr-gcc-c++ avr-gcc xsd bc python python3-pyqt4-sip PyQt4-qsci-api python3-PyQt4-devel python3-pillow python3-pillow-devel avr-libc qt5-qttools qt5-qttools-devel qt5-qtmultimedia qt5-qtmultimedia-devel qt5-linguist qt5-qtsvg qt5-qtsvg-devel dfu-util gcc-plugin-devel fox fox-devel fox-utils SDL SDL-devel SDL2 SDL2-devel SDL_sound sdljava arm-none-eabi-gcc-cs arm-none-eabi-gcc-cs-c++ arm-none-eabi-newlib rpmdevtools rpm-build

# Clone del repository
git clone --recursive -b 2.3 https://github.com/opentx/opentx.git
cd opentx

# Modifica opzionale del numero di jobs
#sed -i 's/JOBS=2/JOBS=\$\(nproc\)/g' ./tools/build-companion-release.sh

# Script per la compilazione
./tools/build-companion-release.sh ../ ./build 23
