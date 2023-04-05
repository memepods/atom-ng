echo Bootstrapping Atom-ng... &

set CFLAGS=-DNDEBUG -mavx -maes -O3 -g0 -s -Wno-deprecated-declarations -Wno-implicit-fallthrough -Wno-cast-function-type &
set CXXFLAGS=-DNDEBUG -mavx -maes -O3 -g0 -s -Wno-deprecated-declarations -Wno-implicit-fallthrough -Wno-cast-function-type &
set CPPFLAGS=-DNDEBUG -mavx -maes -O3 -g0 -s -Wno-deprecated-declarations -Wno-implicit-fallthrough -Wno-cast-function-type &
set LDFLAGS=-Wl,-O3 -mavx -maes -s &

mkdir %USERPROFILE%\.atom\.node-gyp &
copy gitconfig %USERPROFILE%\.atom\.node-gyp\.gitconfig &

set ELECTRON_CACHE=%~dp0%electron\bin &
set electron_config_cache=%~dp0%electron\bin &

script\bootstrap.cmd
