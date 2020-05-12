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
      identifier = { name = "hepevt"; version = "0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "";
      url = "";
      synopsis = "HEPEVT parser";
      description = "This package implements a parser for the ASCII HEPEVT event log file format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lha" or (errorHandler.buildDepError "lha"))
          ];
        buildable = true;
        };
      };
    }