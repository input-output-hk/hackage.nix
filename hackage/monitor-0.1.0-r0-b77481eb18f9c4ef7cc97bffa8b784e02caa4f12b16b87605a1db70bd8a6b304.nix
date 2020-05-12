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
      identifier = { name = "monitor"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2013 Martin Stensgård";
      maintainer = "mastensg@ping.uio.no";
      author = "Martin Stensgård";
      homepage = "";
      url = "";
      synopsis = "Do things when files change.";
      description = "monitor waits for files to change, then runs system commands.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "monitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }