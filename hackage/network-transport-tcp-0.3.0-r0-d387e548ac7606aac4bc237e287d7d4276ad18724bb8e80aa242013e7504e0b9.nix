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
        name = "network-transport-tcp";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, dcoutts@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "TCP instantiation of Network.Transport";
      description = "TCP instantiation of Network.Transport";
      buildType = "Simple";
    };
    components = {
      "network-transport-tcp" = {
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
      };
    };
  }