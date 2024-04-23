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
      specVersion = "1.10";
      identifier = { name = "Pup-Events"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Daniel Wilson";
      maintainer = "wilsonhardrock@gmail.com";
      author = "Daniel Wilson";
      homepage = "";
      url = "";
      synopsis = "A networked event handling framework for hooking\ninto other programs.";
      description = "Pup-Events is a networking enabled event handling\nframework. This is a virtual package to install all\nof the Pup-Events modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Pup-Events-Server" or (errorHandler.buildDepError "Pup-Events-Server"))
          (hsPkgs."Pup-Events-Client" or (errorHandler.buildDepError "Pup-Events-Client"))
          (hsPkgs."Pup-Events-PQueue" or (errorHandler.buildDepError "Pup-Events-PQueue"))
        ];
        buildable = true;
      };
      exes = {
        "pupevents-all" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }