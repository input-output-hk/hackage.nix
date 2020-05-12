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
      specVersion = "1.10";
      identifier = { name = "abc-puzzle"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick.bahr@gmail.com";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/abc-puzzle";
      url = "";
      synopsis = "Generate instances of the ABC logic puzzle.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "abc-puzzle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
            (hsPkgs."Safe" or (errorHandler.buildDepError "Safe"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }