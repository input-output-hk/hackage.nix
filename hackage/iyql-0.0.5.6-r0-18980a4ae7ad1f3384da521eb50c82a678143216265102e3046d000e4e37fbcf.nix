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
      identifier = { name = "iyql"; version = "0.0.5.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Diego Souza <dsouza+iyql at bitforest.org>";
      author = "Diego Souza <dsouza+iyql at bitforest.org>";
      homepage = "";
      url = "";
      synopsis = "CLI (command line interface) to YQL";
      description = "Similar to popular database frontend interfaces like sqlite3, this\nproject provides a full featured CLI for YQL.\nIt extends YQL introducing the concept of of location functions.\nThese have the same concept of YQL functions except they are\nintercepted by the program itself and executed locally. For\ninstance, changing the format to json or turning diagnostics on\nare examples of such functions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "iyql" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
          buildable = true;
        };
      };
    };
  }