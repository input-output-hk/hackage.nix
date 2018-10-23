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
        name = "raketka";
        version = "1.1.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/raketka";
      url = "";
      synopsis = "distributed-process node";
      description = "peer node with simplelocalnet backend";
      buildType = "Simple";
    };
    components = {
      "raketka" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-simplelocalnet)
          (hsPkgs.tagged)
          (hsPkgs.random)
          (hsPkgs.async)
          (hsPkgs.network)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.aeson)
          (hsPkgs.conf-json)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "raketka" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.async)
            (hsPkgs.random)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.aeson)
            (hsPkgs.conf-json)
            (hsPkgs.template-haskell)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }