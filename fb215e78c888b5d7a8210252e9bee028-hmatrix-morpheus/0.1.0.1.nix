{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      openblas = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hmatrix-morpheus";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/Alexander-Ignatyev/morpheus/tree/master/hmatrix-morpheus";
      url = "";
      synopsis = "Low-level machine learning auxiliary functions.";
      description = "Purely functional interface to morpheus based on hmatrix.\nMorpheus library contains a bunch of cache line aware numerical algorithms\nsuitable for using as a low-level primitives to build machine learning applications.";
      buildType = "Simple";
    };
    components = {
      "hmatrix-morpheus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
        ];
        libs = pkgs.lib.optionals (system.isLinux) (if _flags.openblas
          then [ (pkgs.openblas) ]
          else [
            (pkgs.blas)
            (pkgs.lapack)
          ]);
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs.Accelerate);
      };
      exes = {
        "hmatrix-morpheus-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hmatrix-morpheus)
            (hsPkgs.hmatrix)
          ];
        };
      };
      tests = {
        "hmatrix-morpheus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hmatrix-morpheus)
            (hsPkgs.hmatrix)
            (hsPkgs.MonadRandom)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
          ];
        };
      };
      benchmarks = {
        "hmatrix-morpheus-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hmatrix-morpheus)
            (hsPkgs.hmatrix)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }