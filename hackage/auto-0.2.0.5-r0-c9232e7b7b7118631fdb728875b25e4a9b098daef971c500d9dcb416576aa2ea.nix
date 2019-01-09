{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "auto"; version = "0.2.0.5"; };
      license = "MIT";
      copyright = "(c) Justin Le 2015";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/auto";
      url = "";
      synopsis = "Denotative, locally stateful programming DSL & platform";
      description = "(Up to date documentation is maintained at\n<https://mstksg.github.com/auto>)\n\n/auto/ is a Haskell DSL and platform providing\ndeclarative, compositional, denotative semantics for\ndiscrete-step, locally stateful, interactive programs,\ngames, and automations, with implicitly derived\nserialization.\n\n/auto/ works by providing a type that encapsulates\n\"stream transformers\", or locally stateful functions; by\nspecifying your program as a (potentially cyclic) graph\nof relationships between streams, you create a way of\n\"declaring\" a system based simply on static relationships\nbetween quantities.\n\nInstead of a \"state monad\" type solution, where all\nfunctions have access to a global state, /auto/ works by\nspecifying relationships which each exist independently\nand on their own, without any global state.\n\nA more fuller exposition is in the `README.md`, in this\nproject directory and also online at\n<https://github.com/mstksg/auto/blob/master/README.md>;\nyou can get started by reading the tutorial, which is\nalso in this project directory in the `tutorial`\ndirectory, and also incidentally online at\n<https://github.com/mstksg/auto/blob/master/tutorial/tutorial.md>.\nAlso, check out the\n<https://github.com/mstksg/auto-examples auto-examples>\nrepository on github for plenty of real-world and toy\nexamples to learn from!\n\nSupport available on freenode's #haskell-auto,\n#haskell-game, and also on the github issue\ntracker for the source repository.\n\nImport \"Control.Auto\" to begin!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.MonadRandom)
          ];
        };
      };
    }