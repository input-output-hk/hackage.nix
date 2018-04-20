{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "massiv";
          version = "0.1.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Alexey Kuleshevich";
        maintainer = "alexey@kuleshevi.ch";
        author = "Alexey Kuleshevich";
        homepage = "https://github.com/lehins/massiv";
        url = "";
        synopsis = "Massiv (Массив) is an Array Library.";
        description = "Multi-dimensional Arrays with fusion, stencils and parallel computation.";
        buildType = "Simple";
      };
      components = {
        massiv = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.vector
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.data-default
              hsPkgs.safe-exceptions
              hsPkgs.massiv
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }