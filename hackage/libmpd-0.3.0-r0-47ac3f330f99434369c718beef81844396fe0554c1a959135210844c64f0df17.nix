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
      specVersion = "1.2";
      identifier = { name = "libmpd"; version = "0.3.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Ben Sinclair 2005-2008";
      maintainer = "bsinclai@turing.une.edu.au";
      author = "Ben Sinclair";
      homepage = "http://turing.une.edu.au/~bsinclai/code/libmpd-haskell.html";
      url = "";
      synopsis = "An MPD client library.";
      description = "A client library for MPD, the Music Player Daemon\n(<http://www.musicpd.org/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }