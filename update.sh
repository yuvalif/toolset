
# install latest version of cgdb
git submodule update --remote --merge cgdb
cd cgdb || exit
./autogen.sh
mkdir -p build
cd build || exit
../configure
make -j "$(nproc)"
sudo make install
cd ../..

# install git tui
git submodule update --remote --merge git-tui
cd git-tui || exit
mkdir -p build
cd build || exit
cmake ..
make -j "$(nproc)"
sudo make install
cd ../..

