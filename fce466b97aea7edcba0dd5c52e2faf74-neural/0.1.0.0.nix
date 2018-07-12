{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "neural";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Dr. Lars Bruenjes";
        maintainer = "brunjlar@gmail.com";
        author = "Lars Bruenjes";
        homepage = "http://github.com/brunjlar/neural";
        url = "";
        synopsis = "Neural Networks in native Haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "neural" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ad
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-typelits-natnormalise
            hsPkgs.hspec
            hsPkgs.lens
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.pipes
            hsPkgs.profunctors
            hsPkgs.STMonadTrans
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.typelits-witnesses
            hsPkgs.vector
          ];
        };
        exes = {
          "iris" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.neural
              hsPkgs.text
            ];
          };
          "sqrt" = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.neural
            ];
          };
        };
        tests = {
          "neural-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.MonadRandom
              hsPkgs.neural
            ];
          };
          "neural-doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.neural
            ];
          };
        };
      };
    }