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
      identifier = { name = "hsgtd"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "michael.lesniak@gmail.com";
      author = "Michael Lesniak";
      homepage = "http://www.mlesniak.com/haskell/gettings-things-done-in-haskell/";
      url = "";
      synopsis = "Console-based gettings-things-done application";
      description = "Console-based application for using the Gettings-Things-\nDone- approach for task management using projects and\ncontexts.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsgtd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }