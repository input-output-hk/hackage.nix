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
      specVersion = "1.6";
      identifier = { name = "HDBC-mysql"; version = "0.6.4.1"; };
      license = "LicenseRef-LGPL";
      copyright = "2009-2010 Chris Waterson, 2011 MailRank";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Chris Waterson";
      homepage = "http://github.com/mailrank/hdbc-mysql";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC, implemented via\nbindings to the C @mysqlclient@ library.";
      buildType = "Custom";
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
        buildable = true;
        };
      };
    }