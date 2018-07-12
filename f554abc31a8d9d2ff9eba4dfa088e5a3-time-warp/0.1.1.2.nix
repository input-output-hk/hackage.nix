{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "time-warp";
          version = "0.1.1.2";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Serokell";
        maintainer = "Serokell <hi@serokell.io>";
        author = "Serokell";
        homepage = "https://github.com/serokell/time-warp";
        url = "";
        synopsis = "Distributed systems execution emulation";
        description = "This package allows to write scenarios over distributed\nsystems, which can be launched as either real program or\nfast emulation without need to wait for delays and with\nnetwork nastiness manually controlled.";
        buildType = "Simple";
      };
      components = {
        "time-warp" = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.data-msgpack
            hsPkgs.exceptions
            hsPkgs.formatting
            hsPkgs.hslogger
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.MonadRandom
            hsPkgs.monad-loops
            hsPkgs.monad-control
            hsPkgs.network-msgpack-rpc
            hsPkgs.pqueue
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-instances
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.serokell-util
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.time
            hsPkgs.time-units
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
        exes = {
          "token-ring" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.data-msgpack
              hsPkgs.exceptions
              hsPkgs.formatting
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.network-msgpack-rpc
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.serokell-util
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.time-units
              hsPkgs.time-warp
              hsPkgs.transformers
              hsPkgs.random
            ];
          };
        };
        tests = {
          "time-warp-test" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.data-msgpack
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.network-msgpack-rpc
              hsPkgs.QuickCheck
              hsPkgs.serokell-util
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.time-units
              hsPkgs.time-warp
              hsPkgs.transformers
              hsPkgs.random
            ];
          };
        };
      };
    }