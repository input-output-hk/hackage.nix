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
    flags = { debug = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "HDBC-mysql"; version = "0.7.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2009-2010 Chris Waterson, 2011 MailRank";
      maintainer = "Ryan Mulligan <ryan@ryantm.com>";
      author = "Chris Waterson";
      homepage = "http://github.com/ryantm/hdbc-mysql";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC, implemented via\nbindings to the C @mysqlclient@ library.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        libs = [
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
          (pkgs."mysqlclient" or (errorHandler.sysDepError "mysqlclient"))
          ];
        buildable = true;
        };
      };
    }