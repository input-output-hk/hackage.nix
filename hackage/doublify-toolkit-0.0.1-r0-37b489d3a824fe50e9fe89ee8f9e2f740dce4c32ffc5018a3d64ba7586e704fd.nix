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
      identifier = { name = "doublify-toolkit"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Doublify Technologies";
      maintainer = "apis+opensource@doublify.io";
      author = "Doublify APIs";
      homepage = "https://github.com/doublifyapis/toolkit-haskell";
      url = "";
      synopsis = "Doublify API toolkit for Haskell";
      description = "Doublify API toolkit";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }