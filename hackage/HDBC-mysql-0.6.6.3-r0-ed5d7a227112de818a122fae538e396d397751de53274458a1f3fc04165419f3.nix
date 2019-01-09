{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC-mysql"; version = "0.6.6.3"; };
      license = "LicenseRef-LGPL";
      copyright = "2009-2010 Chris Waterson, 2011 MailRank";
      maintainer = "Ryan Mullgigan <ryan@ryantm.com>";
      author = "Chris Waterson";
      homepage = "https://github.com/ryantm/hdbc-mysql";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC, implemented via\nbindings to the C @mysqlclient@ library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HDBC)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          ];
        libs = [ (pkgs."mysqlclient") ];
        };
      };
    }