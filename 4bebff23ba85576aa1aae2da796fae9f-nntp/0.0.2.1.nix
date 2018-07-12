{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nntp";
          version = "0.0.2.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2009 Maciej Piechotka";
        maintainer = "uzytkownik2@gmail.com";
        author = "Maciej Piechotka";
        homepage = "";
        url = "";
        synopsis = "Library to connect to an NNTP Server";
        description = "This library allows to connect to NNTP server.";
        buildType = "Simple";
      };
      components = {
        "nntp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.time
          ];
        };
      };
    }