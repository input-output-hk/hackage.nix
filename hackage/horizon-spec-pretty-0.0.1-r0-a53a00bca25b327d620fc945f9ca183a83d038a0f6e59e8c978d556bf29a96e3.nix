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
      specVersion = "3.0";
      identifier = { name = "horizon-spec-pretty"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2022 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "https://horizon-haskell.net";
      url = "";
      synopsis = "Horizon Stable Package Set Pretty Printer";
      description = "This package contains the pretty printer for the Horizon stable package set types (https://horizon-haskell.net). This is a schema used to define package sets sourcing from hackage and git.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."horizon-spec" or (errorHandler.buildDepError "horizon-spec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }