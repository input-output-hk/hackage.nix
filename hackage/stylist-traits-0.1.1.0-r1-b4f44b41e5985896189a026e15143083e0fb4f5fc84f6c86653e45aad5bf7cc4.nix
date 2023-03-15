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
      identifier = { name = "stylist-traits"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "alcinnz@lavabit.com";
      author = "Adrian Cochrane";
      homepage = "https://rhapsode.adrian.geek.nz/";
      url = "";
      synopsis = "Traits, datatypes, & parsers for Haskell Stylist";
      description = "Decoupling layer for Haskell Stylist, so other modules don't have to pull in the full CSS engine in order to integrate it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ];
        buildable = true;
        };
      };
    }