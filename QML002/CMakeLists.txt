cmake_minimum_required(VERSION 3.16)

project(QML002)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.8 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(QML002
    main.cpp
)

qt_add_qml_module(QML002
    URI QML002
    VERSION 1.0
    QML_FILES
        Main.qml
)

target_link_libraries(QML002
    PRIVATE Qt6::Quick
)
