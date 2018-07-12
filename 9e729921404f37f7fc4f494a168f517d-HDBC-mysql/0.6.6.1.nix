{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HDBC-mysql";
          version = "0.6.6.1";
        };
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
        "HDBC-mysql" = {
          depends  = [
            hsPkgs.HDBC
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.utf8-string
          ];
        };
      };
    }