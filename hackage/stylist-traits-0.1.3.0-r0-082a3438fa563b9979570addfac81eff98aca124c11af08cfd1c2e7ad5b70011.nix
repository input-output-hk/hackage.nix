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
      identifier = { name = "stylist-traits"; version = "0.1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "~alcinnz/haskell-stylist@todo.argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://argonaut-constellation.org/";
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