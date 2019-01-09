{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "monad-par"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "A library for parallel programming based on a monad";
      description = "This library offers an alternative parallel programming\nAPI to that provided by the @parallel@ package.\nA 'Par' monad allows the simple description of\nparallel computations, and can be used to add\nparallelism to pure Haskell code.  The basic API\nis straightforward: the monad supports forking\nand simple communication in terms of 'IVar's.\nThe library comes with a work-stealing\nimplementation, but the internals are also\nexposed so that you can build your own scheduler\nif necessary.\nExamples of use can be found in the examples/ directory\nof the source package.\nThe modules below provide additionaly schedulers,\ndata structures, and other added capabilities\nlayered on top of the 'Par' monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          ];
        };
      tests = {
        "test-monad-par" = {
          depends = [
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
            ];
          };
        };
      };
    }