{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "assembler";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Jeff Douglas";
        maintainer = "Jeff Douglas <inbuninbu@gmail.com>";
        author = "Jeff Douglas";
        homepage = "";
        url = "";
        synopsis = "Haskell Assembler";
        description = "An assembler framework written in Haskell.";
        buildType = "Simple";
      };
      components = {
        assembler = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc-binary
            hsPkgs.parsec
          ];
        };
        exes = {
          has = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.ghc-binary
              hsPkgs.parsec
            ];
          };
        };
      };
    }