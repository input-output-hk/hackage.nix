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
      identifier = { name = "MTGBuilder"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "elvishjerricco@gmail.com";
      author = "ElvishJerricco";
      homepage = "";
      url = "";
      synopsis = "Builds decks out of a meta";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mtg-builder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }