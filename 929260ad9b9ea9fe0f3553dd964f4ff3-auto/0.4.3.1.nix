{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "auto";
          version = "0.4.3.1";
        };
        license = "MIT";
        copyright = "(c) Justin Le 2015";
        maintainer = "justin@jle.im";
        author = "Justin Le";
        homepage = "https://github.com/mstksg/auto";
        url = "";
        synopsis = "Denotative, locally stateful programming DSL & platform";
        description = "(Up to date documentation is maintained at\n<https://mstksg.github.com/auto>)\n\nRead the README first!\n<https://github.com/mstksg/auto/blob/master/README.md>\n, for motivating examples, and concrete explanations of\nthings described here.\n\n/auto/ is a Haskell DSL and platform providing\ndeclarative, compositional, denotative semantics for\ndiscrete-step, locally stateful, interactive programs,\ngames, and automations, with implicitly derived\nserialization.  It is suited for any domain where either\nthe input or the output can be described as a stream of\nvalues: a stream of input events, output views, etc.\n\n/auto/ works by providing a type that encapsulates\n\"value stream transformers\", or locally stateful\nfunctions; by specifying your program as a (potentially\ncyclic) graph of relationships between value streams, you\ncreate a way of \"declaring\" a system based simply on\nstatic relationships between quantities.\n\nInstead of a \"state monad\" type solution, where all\nfunctions have access to a rigid global state, /auto/\nworks by specifying relationships which each exist\nindependently and on their own, without any global state.\n\nA more fuller exposition is in the `README.md`, in this\nproject directory and also online at\n<https://github.com/mstksg/auto/blob/master/README.md>;\nyou can get started by reading the tutorial, which is\nalso in this project directory in the `tutorial`\ndirectory, and also incidentally online at\n<https://github.com/mstksg/auto/blob/master/tutorial/tutorial.md>.\nAlso, check out the\n<https://github.com/mstksg/auto-examples auto-examples>\nrepository on github for plenty of real-world and toy\nexamples to learn from; I've also done a\n<http://blog.jle.im/entries/series/+all-about-auto blog series>\non this library, with examples and full tutorials!\n\nSupport available on freenode's #haskell-auto,\n#haskell-game, and also on the github issue\ntracker for the source repository.\n\nImport \"Control.Auto\" to begin!";
        buildType = "Simple";
      };
      components = {
        auto = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.base-orphans
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.profunctors
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
      };
    }