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
      specVersion = "1.12";
      identifier = { name = "subwordgraph"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adambak1992@gmail.com";
      author = "Adam Bąk, Daniel Nowakowski";
      homepage = "https://github.com/danielnowakowski/Subword-Graph";
      url = "";
      synopsis = "Subword graph implementation";
      description = "An implementation of a classic Subword Graph (aka DAWG) data structure for solving string related problems on a single word.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test-subwordgraph" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."subwordgraph" or (errorHandler.buildDepError "subwordgraph"))
          ];
          buildable = true;
        };
      };
    };
  }