{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambda-sampler";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Maciej Bendkowski";
        maintainer = "Maciej Bendkowski <maciej.bendkowski@tcs.uj.edu.pl>";
        author = "Maciej Bendkowski";
        homepage = "https://github.com/maciej-bendkowski/lambda-sampler";
        url = "";
        synopsis = "Boltzmann sampler utilities for lambda calculus.";
        description = "Uniform generation of plain and closed lambda terms\nin the de Bruijn notation.";
        buildType = "Simple";
      };
      components = {
        lambda-sampler = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          lambda-sampler-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.lambda-sampler
            ];
          };
        };
      };
    }