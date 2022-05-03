rm CMakeCache.txt
lcov --directory . --zerocounters
lcov --directory ../Chaste --zerocounters
cmake ../Chaste/ -DChaste_COVERAGE=ON -DChaste_PROFILE_GPROF=ON -DSPECTRA_INCLUDES=/atlas/RSE/CHASTE/chaste-libs/include/spectra/include/Spectra -DCMAKE_C_COMPILER=/usr/bin/gcc 
make -j4 ImmersedBoundary
