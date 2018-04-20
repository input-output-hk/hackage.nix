{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "ftphs";
          version = "1.0.6";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2004-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/ftphs";
        url = "";
        synopsis = "FTP Client and Server Library";
        description = "ftphs provides a Haskell library to implement a FTP client\nand a FTP server.\n\nftphs has a number of features:\n\n* Easy to use operation\n* Full support of text and binary transfers\n* Optional lazy interaction\n* Server can serve up a real or a virtual filesystem tree\n* Standards compliant";
        buildType = "Simple";
      };
      components = {
        ftphs = {
          depends  = [
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.hslogger
            hsPkgs.MissingH
          ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.testpack
              hsPkgs.HUnit
            ];
          };
        };
      };
    }