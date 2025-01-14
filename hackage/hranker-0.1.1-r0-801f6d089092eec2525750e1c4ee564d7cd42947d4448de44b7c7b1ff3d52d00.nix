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
      identifier = { name = "hranker"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Robin Green 2009";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "Robin Green";
      homepage = "";
      url = "";
      synopsis = "Basic utility for ranking a list of items";
      description = "A CLI utility for helping the user to rank a list of items in order.\nTies are permitted.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hranker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HCL" or (errorHandler.buildDepError "HCL"))
            (hsPkgs."HCL" or (errorHandler.buildDepError "HCL"))
            (hsPkgs."NonEmpty" or (errorHandler.buildDepError "NonEmpty"))
            (hsPkgs."NonEmpty" or (errorHandler.buildDepError "NonEmpty"))
          ];
          buildable = true;
        };
      };
    };
  }