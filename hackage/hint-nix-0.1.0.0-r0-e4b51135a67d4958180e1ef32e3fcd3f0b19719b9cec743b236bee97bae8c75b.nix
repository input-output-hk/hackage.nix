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
      specVersion = "2.2";
      identifier = { name = "hint-nix"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2025 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/juspay/vira";
      url = "";
      synopsis = "Helper for using hint with Nix package databases";
      description = "Provides convenience functions for running Haskell interpreter with proper Nix package database configuration";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."include-env" or (errorHandler.buildDepError "include-env"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
        ];
        buildable = true;
      };
    };
  }