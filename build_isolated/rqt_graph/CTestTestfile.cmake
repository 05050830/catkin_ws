# CMake generated Testfile for 
# Source directory: /home/ubuntu/catkin_ws/src/rqt_graph
# Build directory: /home/ubuntu/catkin_ws/build_isolated/rqt_graph
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rqt_graph_nosetests_test.dotcode_test.py "/home/ubuntu/catkin_ws/build_isolated/rqt_graph/catkin_generated/env_cached.sh" "/home/ubuntu/catkin_ws/venv/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build_isolated/rqt_graph/test_results/rqt_graph/nosetests-test.dotcode_test.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/ubuntu/catkin_ws/build_isolated/rqt_graph/test_results/rqt_graph" "/usr/bin/nosetests -P --process-timeout=60 /home/ubuntu/catkin_ws/src/rqt_graph/test/dotcode_test.py --with-xunit --xunit-file=/home/ubuntu/catkin_ws/build_isolated/rqt_graph/test_results/rqt_graph/nosetests-test.dotcode_test.py.xml")
subdirs(gtest)
