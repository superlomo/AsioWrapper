find_path(AsioWrapper_INCLUDE_DIR D:/Code/AsioWrapper/AsioWrapper/include)
message("AsioWrapper include path is ${AsioWrapper_INCLUDE_DIR}")

find_library(AsioWrapper_LIBRARY  NAMES AsioWrapper HINTS D:/Code/AsioWrapper/AsioWrapper/lib/)
message("AsioWrapper library path is ${AsioWrapper_LIBRARY}")

#if(AsioWrapper_INCLUDE_DIR and AsioWrapper_LIBRARY)
    set(AsioWrapper_FOUND true)
#endif(AsioWrapper_INCLUDE_DIR and AsioWrapper_LIBRARY)
