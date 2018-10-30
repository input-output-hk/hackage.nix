{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use-mock-network = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-transport-tcp";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com, watson.timothy@gmail.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "TCP instantiation of Network.Transport";
      description = "TCP instantiation of Network.Transport";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-transport)
          (hsPkgs.data-accessor)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
      tests = {
        "TestTCP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-transport-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
          ];
        };
        "TestQC" = {
          depends  = pkgs.lib.optionals (flags.use-mock-network) [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lockfree-queue)
          ];
        };
      };
    };
  }