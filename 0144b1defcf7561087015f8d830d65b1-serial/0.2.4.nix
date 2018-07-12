{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "serial";
          version = "0.2.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "fred.ross@epfl.ch";
        author = "Frederick Ross";
        homepage = "";
        url = "";
        synopsis = "POSIX serial port wrapper";
        description = "Provides a clean interface to working with POSIX serial ports in Haskell";
        buildType = "Simple";
      };
      components = {
        "serial" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }