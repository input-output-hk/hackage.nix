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
        name = "gpu-vulkan-middle-khr-surface-glfw";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-middle-khr-surface-glfw#readme";
      url = "";
      synopsis = "medium wrapper for GLFW surface for the Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-middle-khr-surface-glfw#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
          (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      exes = {
        "gpu-vulkan-middle-khr-surface-glfw-exe" = {
          depends = [
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
            (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
            (hsPkgs."gpu-vulkan-middle-khr-surface-glfw" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface-glfw"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gpu-vulkan-middle-khr-surface-glfw-test" = {
          depends = [
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
            (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
            (hsPkgs."gpu-vulkan-middle-khr-surface-glfw" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface-glfw"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }