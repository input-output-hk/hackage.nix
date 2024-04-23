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
      identifier = { name = "zip-cmd"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Csaba Hruska";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska";
      homepage = "https://github.com/grin-compiler/zip-cmd";
      url = "";
      synopsis = "Simple CLI tool for the haskell zip library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zip-cmd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."shellwords" or (errorHandler.buildDepError "shellwords"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
          ];
          buildable = true;
        };
      };
    };
  }