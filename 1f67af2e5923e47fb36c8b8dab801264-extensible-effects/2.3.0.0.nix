{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      lib-werror = false;
      force-openunion-51 = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extensible-effects";
        version = "2.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "suhailshergill@gmail.com";
      author = "Oleg Kiselyov, Amr Sabry, Cameron Swords, Ben Foppa";
      homepage = "https://github.com/suhailshergill/extensible-effects";
      url = "";
      synopsis = "An Alternative to Monad Transformers";
      description = "This package introduces datatypes for typeclass-constrained effects,\nas an alternative to monad-transformer based (datatype-constrained)\napproach of multi-layered effects.\nFor more information, see the original paper at\n<http://okmij.org/ftp/Haskell/extensible/exteff.pdf>.\nAny help is appreciated!";
      buildType = "Simple";
    };
    components = {
      "extensible-effects" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "extensible-effects-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.extensible-effects)
            (hsPkgs.directory)
          ];
        };
      };
      benchmarks = {
        "extensible-effects-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.extensible-effects)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }