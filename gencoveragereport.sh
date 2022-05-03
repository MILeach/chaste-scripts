#make ImmersedBoundary
#ctest -V -R ImmersedBoundary
lcov --config-file ../Chaste/cmake/Config/lcovrc --directory . --capture --output-file covout.info
lcov --config-file ../Chaste/cmake/Config/lcovrc --remove covout.info "/atlas/RSE/CHASTE/chaste-build/_deps/pocketfft-src/*" "/atlas/RSE/CHASTE/chaste-build/heart/src/odes/cellml/*" "*/ode/src/*" "*/pde/src/*" "/usr/*" "*/fortests/*" "*/test/*" "*/3rdparty/*" "*/global/src/*" "Debug_*/" "*/io/*" "*/cxxtest/*" "*/chaste-libs/*" --output-file covout.info.cleaned
genhtml covout.info.cleaned
