set USE_GSTREAMER=0
set USE_SDL2=1
set KIVY_SDL2_PATH=%LIBRARY_INC%\SDL2
sed -i "/kivy_deps/d" setup.cfg
sed -i "/pypiwin32/d" setup.cfg
sed -i "/angle =/d" setup.cfg
sed -i "/glew =/d" setup.cfg
%PYTHON% -m pip install --verbose --no-deps --ignore-installed .
