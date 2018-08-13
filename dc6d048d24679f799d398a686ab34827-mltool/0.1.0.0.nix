{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mltool";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/alexander-ignatyev/mltool";
      url = "";
      synopsis = "Machine Learning Toolbox";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "mltool" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.ascii-progress)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
        ];
      };
      tests = {
        "mltool-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mltool)
            (hsPkgs.vector)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-gsl-stats)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }