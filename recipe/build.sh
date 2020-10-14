if [ "$(uname)" == "Darwin" ]; then
  export USE_X11=0;
  export USE_GSTREAMER=1;
  export CFLAGS="${CFLAGS} -i sysroot ${CONDA_BUILD_SYSROOT}"
  export CXXFLAGS="${CXXFLAGS} -i sysroot ${CONDA_BUILD_SYSROOT}"
else
  export USE_X11=1;
  export USE_GSTREAMER=1;
fi;
USE_SDL2=1 $PYTHON -m pip install --no-deps --ignore-installed .
