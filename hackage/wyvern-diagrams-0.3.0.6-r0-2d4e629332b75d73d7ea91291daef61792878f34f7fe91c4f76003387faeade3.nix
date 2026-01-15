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
      specVersion = "3.4";
      identifier = { name = "wyvern-diagrams"; version = "0.3.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Piotr Justyna";
      maintainer = "a568adff447749e8a5c47cdf7f31ed11@proton.me";
      author = "Piotr Justyna";
      homepage = "https://github.com/PiotrJustyna/wyvern";
      url = "";
      synopsis = "Simple flowchart diagrams. Inspired by DRAKON.";
      description = "Wyvern combines syntax and rendering engine\nfor simple, DRAKON-like flowcharts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "wyvern-diagrams" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."wyvern-diagrams" or (errorHandler.buildDepError "wyvern-diagrams"))
          ];
          buildable = true;
        };
      };
      tests = {
        "wyvern-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."wyvern-diagrams" or (errorHandler.buildDepError "wyvern-diagrams"))
          ];
          buildable = true;
        };
      };
    };
  }