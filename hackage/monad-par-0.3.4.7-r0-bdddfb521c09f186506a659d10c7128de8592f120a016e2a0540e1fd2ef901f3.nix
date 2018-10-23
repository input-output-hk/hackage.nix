{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      chaselev = false;
      newgeneric = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "monad-par";
        version = "0.3.4.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>, Ryan Newton <rrnewton@gmail.com>";
      author = "Simon Marlow, Ryan Newton";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "A library for parallel programming based on a monad";
      description = "The 'Par' monad offers a simple API for parallel programming.  The\nlibrary works for parallelising both pure and @IO@ computations,\nalthough only the pure version is deterministic.  The default\nimplementation provides a work-stealing scheduler and supports\nforking tasks that are much lighter weight than IO-threads.\n\nFor complete documentation see \"Control.Monad.Par\".\n\nSome examples of use can be found in the @examples/@ directory of\nthe source package.\n\nOther related packages:\n\n* @abstract-par@ provides the type classes that abstract over different\nimplementations of the @Par@ monad.\n\n* @monad-par-extras@ provides extra combinators and monad transformers layered on top of\nthe @Par@ monad.\n\nChanges in 0.3.4 relative to 0.3:\n\n* Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes.\n\n* Added \"Control.Monad.Par.IO\"";
      buildType = "Simple";
    };
    components = {
      "monad-par" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.abstract-par)
          (hsPkgs.abstract-deque)
          (hsPkgs.monad-par-extras)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.mwc-random)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (flags.chaselev) (hsPkgs.chaselev-deque)) ++ pkgs.lib.optional (flags.newgeneric) (hsPkgs.par-classes);
      };
      tests = {
        "test-monad-par" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.abstract-par)
            (hsPkgs.monad-par-extras)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.abstract-deque)
            (hsPkgs.mwc-random)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }