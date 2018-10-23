{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      lib-werror = false;
      force-openunion-51 = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extensible-effects";
        version = "2.6.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "suhailshergill@gmail.com";
      author = "Oleg Kiselyov, Amr Sabry, Cameron Swords, Ben Foppa";
      homepage = "https://github.com/suhailshergill/extensible-effects";
      url = "";
      synopsis = "An Alternative to Monad Transformers";
      description = "This package introduces datatypes for typeclass-constrained effects,\nas an alternative to monad-transformer based (datatype-constrained)\napproach of multi-layered effects.\nAny help is appreciated!";
      buildType = "Simple";
    };
    components = {
      "extensible-effects" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.transformers);
      };
      tests = {
        "extensible-effects-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.monad-control)
            (hsPkgs.silently)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.extensible-effects)
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
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }