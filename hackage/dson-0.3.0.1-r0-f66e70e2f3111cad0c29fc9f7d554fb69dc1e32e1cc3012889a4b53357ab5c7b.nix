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
      identifier = { name = "dson"; version = "0.3.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "luke@lukecycon.com";
      author = "Luke Cycon";
      homepage = "https://github.com/lcycon/hs-dson";
      url = "";
      synopsis = "Haskell Doge Serialized Object Notation Parser";
      description = "A simple parser for Doge Serialized Object Notation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }