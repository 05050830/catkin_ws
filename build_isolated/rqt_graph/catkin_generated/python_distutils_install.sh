#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/catkin_ws/src/rqt_graph"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/catkin_ws/install_isolated/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/catkin_ws/install_isolated/lib/python3/dist-packages:/home/ubuntu/catkin_ws/build_isolated/rqt_graph/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/catkin_ws/build_isolated/rqt_graph" \
    "/home/ubuntu/catkin_ws/venv/bin/python" \
    "/home/ubuntu/catkin_ws/src/rqt_graph/setup.py" \
    build --build-base "/home/ubuntu/catkin_ws/build_isolated/rqt_graph" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ubuntu/catkin_ws/install_isolated" --install-scripts="/home/ubuntu/catkin_ws/install_isolated/bin"
