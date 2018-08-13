{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-p2p";
        version = "0.1.2.0";
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
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.distributed-process)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
        ];
      };
      exes = {
        "jollycloud" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-p2p)
          ];
        };
      };
    };
  }