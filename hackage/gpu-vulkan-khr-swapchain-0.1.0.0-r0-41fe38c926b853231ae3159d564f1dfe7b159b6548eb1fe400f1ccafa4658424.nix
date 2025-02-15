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
      identifier = { name = "gpu-vulkan-khr-swapchain"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-khr-swapchain#readme";
      url = "";
      synopsis = "VK_KHR_swapchain extension of the Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-khr-swapchain#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fixed-generic" or (errorHandler.buildDepError "fixed-generic"))
          (hsPkgs."gpu-vulkan" or (errorHandler.buildDepError "gpu-vulkan"))
          (hsPkgs."gpu-vulkan-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-khr-surface"))
          (hsPkgs."gpu-vulkan-middle-khr-swapchain" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-swapchain"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-khr-swapchain-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fixed-generic" or (errorHandler.buildDepError "fixed-generic"))
            (hsPkgs."gpu-vulkan" or (errorHandler.buildDepError "gpu-vulkan"))
            (hsPkgs."gpu-vulkan-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-khr-surface"))
            (hsPkgs."gpu-vulkan-khr-swapchain" or (errorHandler.buildDepError "gpu-vulkan-khr-swapchain"))
            (hsPkgs."gpu-vulkan-middle-khr-swapchain" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-swapchain"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }