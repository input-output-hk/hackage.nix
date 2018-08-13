{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "1.0.9.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2017 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ftphs";
      url = "";
      synopsis = "FTP Client and Server Library";
      description = "ftphs provides a Haskell library to implement a FTP client\nand a FTP server.\n\nftphs has a number of features:\n\n* Easy to use operation.\n\n* Full support of text and binary transfers.\n\n* Optional lazy interaction.\n\n* Server can serve up a real or a virtual filesystem tree.\n\n* Standards compliant.";
      buildType = "Simple";
    };
    components = {
      "ftphs" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.hslogger)
          (hsPkgs.MissingH)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optional (_flags.buildtests) (hsPkgs.HUnit);
        };
      };
    };
  }