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
      identifier = { name = "cabal-install-bundle"; version = "0.10.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paczesiowa@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "The (bundled) command-line interface for Cabal and Hackage.";
      description = "This is cabal-install with bundled dependencies. Easier to bootstrap.";
      buildType = "Configure";
    };
    components = {
      exes = {
        "cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          libs = [ (pkgs."z" or (errorHandler.sysDepError "z")) ];
          buildable = true;
        };
      };
    };
  }