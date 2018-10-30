{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "ftphs";
        version = "1.0.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ftphs";
      url = "";
      synopsis = "FTP Client and Server Library";
      description = "ftphs provides a Haskell library to implement a FTP client\nand a FTP server.\n\nftphs has a number of features:\n\n* Easy to use operation\n* Full support of text and binary transfers\n* Optional lazy interaction\n* Server can serve up a real or a virtual filesystem tree\n* Standards compliant";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.hslogger)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "runtests" = {
          depends  = [
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }