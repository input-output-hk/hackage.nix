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
      specVersion = "1.16";
      identifier = {
        name = "order-maintenance";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2014–2015 Denis Firsov; © 2014–2017 Wolfgang Jeltsch";
      maintainer = "wolfgang-it@jeltsch.info";
      author = "Wolfgang Jeltsch";
      homepage = "http://hackage.haskell.org/package/order-maintenance";
      url = "http://hackage.haskell.org/packages/archive/order-maintenance/0.2.0.0/order-maintenance-0.2.0.0.tar.gz";
      synopsis = "Algorithms for the order maintenance problem with a safe\ninterface";
      description = "This package is about order maintenance.";
      buildType = "Simple";
    };
    components = {
      "order-maintenance" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.order-maintenance)
          ];
        };
      };
    };
  }