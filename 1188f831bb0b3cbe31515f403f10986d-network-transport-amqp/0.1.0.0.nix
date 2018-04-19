{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      distributed-process-tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-transport-amqp";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "";
        url = "";
        synopsis = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
        description = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
        buildType = "Simple";
      };
      components = {
        network-transport-amqp = {
          depends  = [
            hsPkgs.base
            hsPkgs.amqp
            hsPkgs.cereal
            hsPkgs.async
            hsPkgs.string-conv
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.network-transport
            hsPkgs.exceptions
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.uuid
            hsPkgs.text
            hsPkgs.lens-family
            hsPkgs.lens-family-th
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          amqp-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport
              hsPkgs.network-transport-amqp
              hsPkgs.amqp
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.network-transport-tests
            ];
          };
          api-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport
              hsPkgs.network-transport-amqp
              hsPkgs.amqp
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.network-transport-tests
            ];
          };
        };
      };
    }