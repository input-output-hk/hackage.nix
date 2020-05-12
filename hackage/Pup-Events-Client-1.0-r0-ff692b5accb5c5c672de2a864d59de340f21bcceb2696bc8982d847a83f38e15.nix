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
      specVersion = "1.10.2.0";
      identifier = { name = "Pup-Events-Client"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Daniel Wilson";
      maintainer = "wilsonhardrock@gmail.com";
      author = "Daniel Wilson";
      homepage = "";
      url = "";
      synopsis = "A networked event handling framework for hooking\ninto other programs.";
      description = "Pup-Events is a networking enabled event handling\nframework. This package contains the Client\ncomponent. In order for the client to be useful it\nneeds events and associated handlers, which you\nwrite. You then call the `client` function, passing\nin the required functions for the client to work\nproperly.\nproperly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."Pup-Events-PQueue" or (errorHandler.buildDepError "Pup-Events-PQueue"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }