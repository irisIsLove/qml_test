cmake_minimum_required(VERSION 3.16)

project(QML001)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)
qt_add_executable(${PROJECT_NAME} main.cpp)

qt_add_qml_module(${PROJECT_NAME}
    URI QML001
    VERSION 1.0
    QML_FILES Main.qml
)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Quick)
