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
      identifier = { name = "organize-imports"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "luke@lukecycon.com";
      author = "Luke Cycon";
      homepage = "";
      url = "";
      synopsis = "Organize scala imports";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "organize-imports" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }