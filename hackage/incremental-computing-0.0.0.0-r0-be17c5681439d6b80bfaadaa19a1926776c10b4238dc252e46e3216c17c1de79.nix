{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "incremental-computing";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2014, 2015 Denis Firsov; © 2014, 2015 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/incremental-computing";
      url = "http://hackage.haskell.org/packages/archive/incremental-computing/0.0.0.0/incremental-computing-0.0.0.0.tar.gz";
      synopsis = "Incremental computing";
      description = "This package is about incremental computing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.fingertree)
          (hsPkgs.order-maintenance)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "sequence-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.incremental-computing)
          ];
        };
      };
    };
  }