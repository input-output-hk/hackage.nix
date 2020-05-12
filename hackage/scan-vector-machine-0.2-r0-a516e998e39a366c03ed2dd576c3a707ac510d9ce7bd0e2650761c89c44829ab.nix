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
      specVersion = "1.8";
      identifier = { name = "scan-vector-machine"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Megacz <megacz@cs.berkeley.edu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Scan Vector Machine instruction set in Haskell";
      description = "An implementation of the Scan Vector Machine instruction set in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."dph-par" or (errorHandler.buildDepError "dph-par"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }