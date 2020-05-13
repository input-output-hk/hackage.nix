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
      identifier = { name = "ghc-exactprint"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 7.10 RC2, this\nlibrary provides a means to round trip any* code that can\nbe compiled by GHC\n\n* any currently excludes anything using CPP or lhs.\n\nThe dependency footprint is deliberately kept small so that\nit can easily be tested against GHC HEAD";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }