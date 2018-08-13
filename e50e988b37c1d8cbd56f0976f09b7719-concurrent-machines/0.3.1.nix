{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splot = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concurrent-machines";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Concurrent networked stream transducers";
      description = "A simple use-case for this library is to run the stages\nof a pipelined streaming computation concurrently. If\ndata is streaming through multiple processing stages, you\nmight build a machine like\n\n@\nstep1 >~> step2 >~> step3\n@\n\nThe @>~>@ operator connects the machines on\neither side with a one-element buffer. This means that\ndata is pulled from upstream sources eagerly (perhaps\npulling one more value than will be consumed by\ndownstream), but it also means that each stage can be\nworking simultaneously, increasing throughput of the\nentire pipeline.\n\nA few small examples are available in the @examples@\ndirectory of the source repository.";
      buildType = "Simple";
    };
    components = {
      "concurrent-machines" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.transformers-base)
          (hsPkgs.machines)
          (hsPkgs.async)
          (hsPkgs.lifted-async)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.concurrent-machines)
            (hsPkgs.machines)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.transformers)
            (hsPkgs.time)
          ];
        };
        "splotime" = {
          depends  = pkgs.lib.optionals (_flags.splot) [
            (hsPkgs.base)
            (hsPkgs.concurrent-machines)
            (hsPkgs.machines)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.transformers)
            (hsPkgs.time)
          ];
        };
      };
      benchmarks = {
        "fanout" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.machines)
            (hsPkgs.concurrent-machines)
          ];
        };
      };
    };
  }