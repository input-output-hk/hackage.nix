{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      build_lapacke = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "jalla";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "2011-2015, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/jalla";
      url = "";
      synopsis = "Higher level functions for linear algebra. Wraps BLAS and LAPACKE.";
      description = "NOTE: Hackage does not know LAPACKE, therefore jalla and the documentation\nare not built there. You can find its documentation at\n<http://www.goschs.de/jalla>.\n\nJalla aims at providing high level functions for linear algebra computations which\nshould be fast and easy enough to use. Under the hood, BLAS and LAPACKE are used\n(LAPACKE is a standard C interface to LAPACK which is part of LAPACK since version 3.4).\n\nThe modules Numeric.Jalla.Matrix and Numeric.Jalla.Vector are probably\nthe most useful ones for users. Everything under Numeric.Jalla.Foreign\nis basically wrapping stuff.\n\nCurrently, I am adding new functions whenever I find some time. Please help, if you want to!\nThere are not many tests yet, and we need some nicer error reporting (nicer than exceptions).";
      buildType = "Simple";
    };
    components = {
      "jalla" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.convertible)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
        ];
        libs = [
          (pkgs.lapacke)
          (pkgs.cblas)
          (pkgs.blas)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jalla)
            (hsPkgs.random)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }