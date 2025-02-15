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
      identifier = { name = "gpu-vulkan-khr-surface"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-khr-surface#readme";
      url = "";
      synopsis = "VK_KHR_surface extension of the Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-khr-surface#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gpu-vulkan" or (errorHandler.buildDepError "gpu-vulkan"))
          (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-khr-surface-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gpu-vulkan" or (errorHandler.buildDepError "gpu-vulkan"))
            (hsPkgs."gpu-vulkan-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-khr-surface"))
            (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }