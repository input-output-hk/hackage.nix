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
      identifier = { name = "hosc"; version = "0.18.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) Rohan Drape, Stefan Kersten and others, 2007-2020";
      maintainer = "rd@rohandrape.net";
      author = "Rohan Drape, Stefan Kersten";
      homepage = "http://rohandrape.net/t/hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "@hosc@ implements a subset of the Open Sound Control\nbyte protocol, <http://opensoundcontrol.org/>.\n\nSee \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }