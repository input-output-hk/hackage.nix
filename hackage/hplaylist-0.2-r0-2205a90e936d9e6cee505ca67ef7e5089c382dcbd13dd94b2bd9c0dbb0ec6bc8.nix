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
      identifier = { name = "hplaylist"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tim Chevalier <chevalier@alum.wellesley.edu>";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Application for managing playlist files on a music player";
      description = "Application for managing playlist files on a music player";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hplaylist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }