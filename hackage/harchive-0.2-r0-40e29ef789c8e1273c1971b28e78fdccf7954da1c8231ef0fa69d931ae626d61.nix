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
      identifier = { name = "harchive"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2007, David Brown";
      maintainer = "David Brown <harchive@davidb.org>";
      author = "David Brown <harchive@davidb.org>";
      homepage = "http://www.davidb.org/darcs/harchive/";
      url = "";
      synopsis = "Networked content addressed backup and restore software.";
      description = "Implements software to perform backups and restores of filesystem\ndata to a content addressed storage pool.  Very preliminary version.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hfile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          libs = [ (pkgs."ssl" or (errorHandler.sysDepError "ssl")) ];
          buildable = true;
          };
        "hpool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          libs = [
            (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
            (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }