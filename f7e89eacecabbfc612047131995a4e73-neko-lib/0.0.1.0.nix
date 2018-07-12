{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "neko-lib";
          version = "0.0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "penzin-dev@gmail.com";
        author = "Petr Penzin";
        homepage = "http://github.com/ppenzin/neko-lib-hs/";
        url = "";
        synopsis = "Neko VM code generation and disassembly library";
        description = "Neko Virtual Machine (http://nekovm.org) is a light-weight and portable byte code interpreter; neko-lib is a library for reading and writing NekoVM bytecode implemented entirely in Haskell.";
        buildType = "Simple";
      };
      components = {
        "neko-lib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.optparse-applicative
            hsPkgs.tagged
          ];
        };
        tests = {
          "test-lib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.optparse-applicative
              hsPkgs.tagged
              hsPkgs.process
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.temporary
            ];
          };
        };
      };
    }