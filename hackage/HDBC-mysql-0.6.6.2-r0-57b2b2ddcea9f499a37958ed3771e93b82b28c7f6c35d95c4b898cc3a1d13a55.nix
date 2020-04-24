{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC-mysql"; version = "0.6.6.2"; };
      license = "LicenseRef-LGPL";
      copyright = "2009-2010 Chris Waterson, 2011 MailRank";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Chris Waterson";
      homepage = "http://github.com/bos/hdbc-mysql";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC, implemented via\nbindings to the C @mysqlclient@ library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        libs = [
          (pkgs."mysqlclient" or ((hsPkgs.pkgs-errors).sysDepError "mysqlclient"))
          ];
        buildable = true;
        };
      };
    }