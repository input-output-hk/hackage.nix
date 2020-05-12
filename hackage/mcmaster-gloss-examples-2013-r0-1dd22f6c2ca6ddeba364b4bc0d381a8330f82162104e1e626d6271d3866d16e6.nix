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
      specVersion = "1.8";
      identifier = { name = "mcmaster-gloss-examples"; version = "2013"; };
      license = "MIT";
      copyright = "";
      maintainer = "toporoy@mcmaster.ca, anandc@mcmaster.ca";
      author = "";
      homepage = "http://www.cas.mcmaster.ca/~anand/";
      url = "";
      synopsis = "";
      description = "A collection of simple gloss examples written by first year students at McMaster University. ";
      buildType = "Simple";
      };
    components = {
      exes = {
        "moving-star" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "haunted-house" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "solar-system" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "parabolic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "stare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "waves" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        "windmills" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }