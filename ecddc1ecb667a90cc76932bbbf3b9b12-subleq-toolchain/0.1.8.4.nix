{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "subleq-toolchain";
          version = "0.1.8.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "mrty.ityt.pt@gmail.com";
        author = "SAKAMOTO Noriaki";
        homepage = "";
        url = "";
        synopsis = "Toolchain of subleq computer.";
        description = "Toolchain of subleq computer, which comprise of assembler and simulator.";
        buildType = "Simple";
      };
      components = {
        subleq-toolchain = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
        exes = {
          subleq = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.lens
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.cmdargs
            ];
          };
        };
        tests = {
          test-subleq-toolchain = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.lens
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.template-haskell
              hsPkgs.subleq-toolchain
            ];
          };
        };
      };
    }