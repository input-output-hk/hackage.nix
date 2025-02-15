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
        name = "gpu-vulkan-middle-khr-surface";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-middle-khr-surface#readme";
      url = "";
      synopsis = "medium wrapper for VK_KHR_surface extension of the Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-middle-khr-surface#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
          (hsPkgs."gpu-vulkan-core-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-core-khr-surface"))
          (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-middle-khr-surface-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
            (hsPkgs."gpu-vulkan-core-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-core-khr-surface"))
            (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
            (hsPkgs."gpu-vulkan-middle-khr-surface" or (errorHandler.buildDepError "gpu-vulkan-middle-khr-surface"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }