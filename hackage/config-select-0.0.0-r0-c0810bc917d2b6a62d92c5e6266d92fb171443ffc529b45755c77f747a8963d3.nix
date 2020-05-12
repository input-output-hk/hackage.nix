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
      specVersion = "1.4";
      identifier = { name = "config-select"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "";
      url = "";
      synopsis = "A small program for swapping out dot files.";
      description = "Manage multiple configuration profiles for the same program.  Swap out dot files quickly.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "config-select" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."vty-menu" or (errorHandler.buildDepError "vty-menu"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }