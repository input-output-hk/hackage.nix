{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dejafu";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Overloadable primitives for testable, potentially non-deterministic, concurrency.";
      description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nConcurrency is nice, deadlocks and race conditions not so much. The\n@Par@ monad family, as defined in\n<https://hackage.haskell.org/package/abstract-par/docs/Control-Monad-Par-Class.html abstract-par>\nprovides deterministic parallelism, but sometimes we can tolerate a\nbit of nondeterminism.\n\nThis package provides a class of monads for potentially\nnondeterministic concurrency, with an interface in the spirit of\nGHC's normal concurrency abstraction.\n\n== @MonadConc@ with 'IO':\n\nThe intention of the @MonadConc@ class is to provide concurrency\nwhere any apparent nondeterminism arises purely from the scheduling\nbehaviour. To put it another way, a given computation, parametrised\nwith a fixed set of scheduling decisions, is deterministic. This\nassumption is used by the testing functionality provided by\nTest.DejaFu.\n\nWhilst this assumption may not hold in general when 'IO' is\ninvolved, you should strive to produce test cases where it does.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
      buildType = "Simple";
    };
    components = {
      "dejafu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.dejafu)
            (hsPkgs.base)
          ];
        };
      };
    };
  }