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
      identifier = { name = "wyvern"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "http://dmwit.com/wyvern";
      url = "";
      synopsis = "An autoresponder for Dragon Go Server.";
      description = "Wyvern will play pre-planned sequences for you on the\nDragon Go Server.  Just feed it some SGF files outlining\nyour plan, and it will make moves in any games that are\nwaiting.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wyvern" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dgs" or (errorHandler.buildDepError "dgs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."sgf" or (errorHandler.buildDepError "sgf"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }