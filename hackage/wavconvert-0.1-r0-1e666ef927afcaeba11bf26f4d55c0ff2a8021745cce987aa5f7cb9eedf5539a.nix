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
      specVersion = "1.0";
      identifier = { name = "wavconvert"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Command-line tool for converting audio files and filling in ID3 tags";
      description = "Command-line tool for converting audio files and filling in ID3 tags";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wavconvert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }