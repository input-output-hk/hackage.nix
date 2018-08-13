{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      benchmark = false;
      tests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "parallel-io";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>,\nNeil Mitchell <ndmitchell@gmail.com>,\nBulat Ziganshin <bulat.ziganshin@gmail.com>";
      homepage = "http://batterseapower.github.com/parallel-io";
      url = "";
      synopsis = "Combinators for executing IO actions in parallel on a thread pool.";
      description = "This package provides combinators for sequencing IO actions onto a thread pool. The\nthread pool is guaranteed to contain a fixed number of unblocked threads, minimizing\ncontention. Furthermore, the parallel combinators can be used re-entrently - your parallel\nactions can spawn more parallel actions - without violating this property.\n\nThe package is heavily inspired by the thread <http://thread.gmane.org/gmane.comp.lang.haskell.cafe/56499/focus=56521>.\nThanks to Neil Mitchell and Bulat Ziganshin for the code this package is based on.";
      buildType = "Simple";
    };
    components = {
      "parallel-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.containers)
          (hsPkgs.random)
        ];
      };
      exes = {
        "benchmark" = {
          depends  = pkgs.lib.optionals (!(!_flags.benchmark)) [
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.time)
          ];
        };
        "tests" = {
          depends  = pkgs.lib.optionals (!(!_flags.tests)) [
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }