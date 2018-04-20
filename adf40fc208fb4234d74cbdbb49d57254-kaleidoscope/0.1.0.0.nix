{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tutorial = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kaleidoscope";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2012 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/kaleidoscope";
        url = "";
        synopsis = "Haskell Kaleidoscope tutorial";
        description = "Port of the Kaleidoscope tutorial for Haskell and LLVM";
        buildType = "Simple";
      };
      components = {
        kaleidoscope = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskeline
            hsPkgs.llvm-general
            hsPkgs.llvm-general-pure
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        exes = {
          chapter2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
          chapter3 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.containers
            ];
          };
          chapter4 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
          chapter5 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
          chapter6 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
          chapter7 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.llvm-general
              hsPkgs.llvm-general-pure
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }