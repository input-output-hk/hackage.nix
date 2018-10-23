{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, dcoutts@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Cloud Haskell: Erlang-style concurrency in Haskell";
      description = "This is an implementation of Cloud Haskell, as described in\n/Towards Haskell in the Cloud/ by Jeff Epstein, Andrew Black,\nand Simon Peyton Jones\n(<http://research.microsoft.com/en-us/um/people/simonpj/papers/parallel/>),\nalthough some of the details are different. The precise message\npassing semantics are based on /A unified semantics for future Erlang/\nby\tHans Svensson, Lars-Åke Fredlund and Clara Benac Earle.\nYou will probably also want to install a Cloud Haskell backend such\nas distributed-process-simplelocalnet.";
      buildType = "Simple";
    };
    components = {
      "distributed-process" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.network-transport)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.data-accessor)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
          (hsPkgs.random)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "TestCH" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.data-accessor)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.random)
            (hsPkgs.ghc-prim)
            (hsPkgs.ansi-terminal)
          ];
        };
        "TestClosure" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.data-accessor)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.random)
            (hsPkgs.ghc-prim)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }