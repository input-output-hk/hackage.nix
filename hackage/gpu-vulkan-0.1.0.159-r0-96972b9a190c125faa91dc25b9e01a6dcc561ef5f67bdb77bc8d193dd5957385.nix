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
      identifier = { name = "gpu-vulkan"; version = "0.1.0.159"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/gpu-vulkan#readme";
      url = "";
      synopsis = "Vulkan library";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/gpu-vulkan#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."hetero-parameter-list-with-typelevel-tools" or (errorHandler.buildDepError "hetero-parameter-list-with-typelevel-tools"))
          (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."storable-hetero-list" or (errorHandler.buildDepError "storable-hetero-list"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      tests = {
        "gpu-vulkan-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."gpu-vulkan" or (errorHandler.buildDepError "gpu-vulkan"))
            (hsPkgs."gpu-vulkan-middle" or (errorHandler.buildDepError "gpu-vulkan-middle"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."hetero-parameter-list-with-typelevel-tools" or (errorHandler.buildDepError "hetero-parameter-list-with-typelevel-tools"))
            (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."storable-hetero-list" or (errorHandler.buildDepError "storable-hetero-list"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }