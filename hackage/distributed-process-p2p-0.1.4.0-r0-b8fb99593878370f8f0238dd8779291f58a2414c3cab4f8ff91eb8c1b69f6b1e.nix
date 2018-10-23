{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build-example = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-process-p2p";
        version = "0.1.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/distributed-process-p2p/";
      url = "";
      synopsis = "Peer-to-peer node discovery for Cloud Haskell";
      description = "Bootstraps a peer-to-peer connection network from a set of known hosts.";
      buildType = "Simple";
    };
    components = {
      "distributed-process-p2p" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.distributed-process)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
        ];
      };
      exes = {
        "jollycloud" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-p2p)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }