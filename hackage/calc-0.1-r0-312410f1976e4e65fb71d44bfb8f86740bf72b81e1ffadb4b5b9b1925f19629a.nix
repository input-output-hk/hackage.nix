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
      specVersion = "1.2";
      identifier = { name = "calc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "A small compiler for arithmetic expressions.";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "calc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."harpy" or (errorHandler.buildDepError "harpy"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
          buildable = true;
        };
      };
    };
  }