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
      specVersion = "3.0";
      identifier = { name = "ret"; version = "0.1.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "";
      url = "";
      synopsis = "A tool that returns to a landmark parent directory";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ret" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            ];
          buildable = true;
          };
        };
      };
    }