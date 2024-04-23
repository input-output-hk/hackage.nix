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
      specVersion = "3.0";
      identifier = { name = "pro-abstract"; version = "0.1.2.0"; };
      license = "MPL-2.0";
      copyright = "© 2020 James Alexander Feldman-Crough,\n© 2022 Mission Valley Software LLC";
      maintainer = "hello@typeclasses.com";
      author = "Chris Martin, James Alexander Feldman-Crough";
      homepage = "";
      url = "";
      synopsis = "Abstract syntax for writing documents";
      description = "This package defines the abstract syntax only\nfor a language for writing documents.\n\nForked from part of the\n<https://hackage.haskell.org/package/prosidy prosidy>\npackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pro-abstract".components.sublibs.pro-abstract-prelude or (errorHandler.buildDepError "pro-abstract:pro-abstract-prelude"))
        ];
        buildable = true;
      };
      sublibs = {
        "pro-abstract-prelude" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-pro-abstract" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pro-abstract" or (errorHandler.buildDepError "pro-abstract"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }