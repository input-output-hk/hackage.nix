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
      identifier = { name = "hircules"; version = "0.3.92"; };
      license = "LicenseRef-GPL";
      copyright = "2003 Andrew J. Bromage\n2003, 2004, 2006 Jens-Ulrik Petersen <petersen@haskell.org>\n2008, 2009 Jens Petersen <juhp@haskell.org>";
      maintainer = "Jens Petersen <juhp@haskell.org>";
      author = "Jens Petersen <juhp@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "IRC client";
      description = "Hircules is an IRC (Internet Relay Chat) client with a gtk GUI.\nSee the old project page http://haskell.org/hircules for more info.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hircules" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
      };
    };
  }