{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "CMQ";
          version = "0.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 cmq authors";
        maintainer = "J.Fritsch@cs.cardiff.ac.uk";
        author = "Joerg Fritsch";
        homepage = "http://github.com/viloocity/cmq/";
        url = "";
        synopsis = "cwmwl udp message queue";
        description = "CMQ is a lightweight message queue using the UDP protocol as transport protocol. It trades guarantees, consistency mechanisms, (shared) state and transactions for robustness, scalability and performance. CMQ fares especially well in modern Layer 2 switches in data center networks, as well as in the presence of errors.\nThis library provides CMQ version = 0.0.12";
        buildType = "Simple";
      };
      components = {
        CMQ = {
          depends  = [
            hsPkgs.base
            hsPkgs.iproute
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.PSQueue
            hsPkgs.time
            hsPkgs.stm
          ];
        };
      };
    }