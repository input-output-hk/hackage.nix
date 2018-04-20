{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kademlia";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fro_ozen <fro_ozen@gmx.de>";
        author = "fro_ozen <fro_ozen@gmx.de>";
        homepage = "https://github.com/froozen/kademlia";
        url = "";
        synopsis = "An implementation of the Kademlia DHT Protocol";
        description = "\nA haskell implementation of the Kademlia distributed hashtable, an efficient\nway to store and lookup values distributed over a P2P network.\n\nThe implementation is based on the paper\n/Kademlia: A Peer-to-peer Information System Based on the XOR Metric/:\n<http://pdos.csail.mit.edu/~petar/papers/maymounkov-kademlia-lncs.pdf>)\nby Petar Maymounkov and David Mazières.\n\nThis library aims to be very simple and pleasant to use, with the downside of\ndeciding some of the implementation details, like timeout intervals and\nk-bucket size, for the user.";
        buildType = "Simple";
      };
      components = {
        kademlia = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.stm
            hsPkgs.transformers-compat
          ];
        };
      };
    }