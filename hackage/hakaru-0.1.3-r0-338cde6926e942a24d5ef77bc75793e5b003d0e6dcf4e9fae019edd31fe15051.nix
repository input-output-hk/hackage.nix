{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hakaru";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://indiana.edu/~ppaml/";
      url = "";
      synopsis = "A probabilistic programming embedded DSL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hakaru" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.logfloat)
          (hsPkgs.hmatrix)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.cassava)
          (hsPkgs.zlib)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.statistics)
          (hsPkgs.parsec)
          (hsPkgs.array)
          (hsPkgs.mwc-random)
          (hsPkgs.directory)
          (hsPkgs.integration)
          (hsPkgs.primitive)
          (hsPkgs.parallel)
          (hsPkgs.monad-loops)
        ];
      };
      tests = {
        "hakaru-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.random)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.logfloat)
            (hsPkgs.math-functions)
            (hsPkgs.statistics)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
            (hsPkgs.hakaru)
            (hsPkgs.mwc-random)
            (hsPkgs.primitive)
            (hsPkgs.monad-loops)
          ];
        };
      };
      benchmarks = {
        "bench-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.criterion)
            (hsPkgs.hakaru)
          ];
        };
      };
    };
  }