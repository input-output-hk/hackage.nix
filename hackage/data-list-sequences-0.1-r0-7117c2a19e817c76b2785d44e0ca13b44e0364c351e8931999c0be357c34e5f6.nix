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
      identifier = { name = "data-list-sequences"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jkramer@nex.scrapping.cc";
      author = "Jonas Kramer";
      homepage = "https://github.com/jkramer/data-list-sequences";
      url = "";
      synopsis = "Utilities for working with sequences within lists.";
      description = "Find sequences within lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }