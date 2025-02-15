{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = {
        name = "gpu-vulkan-core-khr-swapchain";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-core-khr-swapchain#readme";
      url = "";
      synopsis = "Thin wrapper for VK_KHR_swapchain extension of the Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-core-khr-swapchain#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
          (hsPkgs."gpu-vulkan-core-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-core-khr-surface"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-core-khr-swapchain-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
            (hsPkgs."gpu-vulkan-core-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-core-khr-surface"))
            (hsPkgs."gpu-vulkan-core-khr-swapchain" or (errorHandler.buildDepError "gpu-vulkan-core-khr-swapchain"))
          ];
          buildable = true;
        };
      };
    };
  }