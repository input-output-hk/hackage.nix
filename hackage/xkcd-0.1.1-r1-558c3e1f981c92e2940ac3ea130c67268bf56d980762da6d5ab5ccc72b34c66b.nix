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
      identifier = { name = "xkcd"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robert.selvek@gmail.com";
      author = "Róbert Selvek";
      homepage = "http://github.com/sellweek/xkcd";
      url = "";
      synopsis = "Downloads the most recent xkcd comic.";
      description = "Downloads the most recent xkcd comic into a folder on a disk.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xkcd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }