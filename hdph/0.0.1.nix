{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdph";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Maier <C.Patrick.Maier@gmail.com>";
        author = "Patrick Maier <C.Patrick.Maier@gmail.com>,\nRob Stewart <robstewart57@gmail.com>";
        homepage = "https://github.com/PatrickMaier/HdpH";
        url = "";
        synopsis = "Haskell distributed parallel Haskell";
        description = "Haskell distributed parallel Haskell (HdpH) is a Haskell DSL\nfor distributed-memory parallelism, implemented entirely in\nHaskell (as supported by GHC).";
        buildType = "Simple";
      };
      components = {
        hdph = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.network-info
            hsPkgs.network-multicast
            hsPkgs.network-transport
            hsPkgs.network-transport-tcp
            hsPkgs.random
            hsPkgs.time
            hsPkgs.hdph-closure
          ];
        };
        exes = {
          hello = {
            depends  = [
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-multicast
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.random
              hsPkgs.time
              hsPkgs.hdph-closure
            ];
          };
          fib = {
            depends  = [
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-multicast
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.random
              hsPkgs.time
              hsPkgs.hdph-closure
            ];
          };
          sumeuler = {
            depends  = [
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-multicast
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.random
              hsPkgs.time
              hsPkgs.hdph-closure
            ];
          };
          nbody = {
            depends  = [
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-multicast
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.random
              hsPkgs.time
              hsPkgs.hdph-closure
            ];
          };
        };
      };
    }