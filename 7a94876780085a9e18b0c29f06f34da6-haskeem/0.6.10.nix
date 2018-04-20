{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskeem";
          version = "0.6.10";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        homepage = "";
        url = "";
        synopsis = "A small scheme interpreter";
        description = "This is a moderately complete small scheme interpreter.\nIt implements most of R6RS, with the exception of call/cc\nand a macro system. It is also not necessarily fully\ntail-recursive; so it's not industrial-strength. For\nplaying with or learning scheme, it should be pretty good.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskeem = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.haskell98
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.haskeline
            ];
          };
        };
      };
    }