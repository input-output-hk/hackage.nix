{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "equeue"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Application level triggered, and edge triggered event multiqueues.";
      description = "A system for providing late binding for how different types of events are handled.\n\nIt is often important for an application to control how it consumes updates for optimal\nprocessing, but event sources are typically in control of delivery. The EQueue abstraction\nallows the consumer to provide an implimentation that balances delivery for its needs.\nTo do this, it distinguishes events into two types, level and edge triggered.\n\nLevel triggered events are used where the resulting state is cared about and a pure model\nof how events combine is available as a Semigroup instance. The transitions it took to get\nto the new state between dequeues is not of interest.\n\nEdge triggered events are where the sequence of occurences are of importance, or a\npure model is not available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          ];
        };
      tests = {
        "test-equeue" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.delay)
            (hsPkgs.equeue)
            (hsPkgs.semigroups)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            ];
          };
        };
      };
    }