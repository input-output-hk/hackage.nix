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
      specVersion = "1.6";
      identifier = { name = "fresh"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lazar6@illinois.edu";
      author = "David Lazar";
      homepage = "https://code.google.com/p/fresh-hs/";
      url = "";
      synopsis = "Introduce fresh variables into Haskell source code";
      description = "This library provides functions for converting fresh\nvariables of the form @Ident \\\"\\@foo\\\"@ into concrete\nvariables that are globally unique across an AST.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }