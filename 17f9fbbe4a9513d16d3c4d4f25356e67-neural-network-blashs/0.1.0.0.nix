{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      vec128 = false;
      vec256 = false;
      vec512 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "neural-network-blashs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jiasenwu@hotmail.com";
        author = "Jiasen Wu";
        homepage = "https://github.com/pierric/neural-network";
        url = "";
        synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
        description = "Provides execution backend of neural network on top of blas-hs.";
        buildType = "Custom";
      };
      components = {
        neural-network-blashs = {
          depends  = [
            hsPkgs.base
            hsPkgs.blas-hs
            hsPkgs.mwc-random
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.constraints
            hsPkgs.ghc-prim
            hsPkgs.neural-network-base
          ];
        };
        tests = {
          s1 = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hmatrix
              hsPkgs.vector
              hsPkgs.blas-hs
              hsPkgs.neural-network-base
            ];
          };
        };
      };
    }