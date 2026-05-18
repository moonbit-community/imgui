#if defined(__has_include) && __has_include(<GLFW/glfw3.h>)
#include "upstream/imgui_impl_glfw.cpp"
#else
static int moonbit_imgui_glfw_backend_unavailable = 0;
#endif
