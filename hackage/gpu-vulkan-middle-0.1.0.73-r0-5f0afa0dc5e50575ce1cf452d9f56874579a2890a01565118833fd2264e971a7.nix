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
    flags = { debug = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "gpu-vulkan-middle"; version = "0.1.0.73"; };
      license = "BSD-3-Clause";
      copyright = "2022 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan-middle#readme";
      url = "";
      synopsis = "Medium wrapper for Vulkan API";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan-middle#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
          (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
          (hsPkgs."ranged-list" or (errorHandler.buildDepError "ranged-list"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."storable-hetero-list" or (errorHandler.buildDepError "storable-hetero-list"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-misc-yj" or (errorHandler.buildDepError "text-misc-yj"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-middle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."gpu-vulkan-core" or (errorHandler.buildDepError "gpu-vulkan-core"))
            (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
            (hsPkgs."ranged-list" or (errorHandler.buildDepError "ranged-list"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."storable-hetero-list" or (errorHandler.buildDepError "storable-hetero-list"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-misc-yj" or (errorHandler.buildDepError "text-misc-yj"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
    };
  }