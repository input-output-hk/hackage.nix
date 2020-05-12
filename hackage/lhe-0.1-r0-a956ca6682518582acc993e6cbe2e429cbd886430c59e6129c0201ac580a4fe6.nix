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
      identifier = { name = "lhe"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "";
      url = "";
      synopsis = "Parse for Les-Houches event files";
      description = "This package implements a parser for the Les-Houches event file format as described in hep-ph/0609017";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
        buildable = true;
        };
      };
    }