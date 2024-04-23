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
      specVersion = "1.2";
      identifier = { name = "linkcore"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Combines multiple GHC Core modules into a single module";
      description = "Combines multiple GHC Core modules into a single module";
      buildType = "Simple";
    };
    components = {
      exes = {
        "linkcore" = {
          depends = [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."extcore" or (errorHandler.buildDepError "extcore"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }