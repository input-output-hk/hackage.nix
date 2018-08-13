{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      build-executables = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "time-warp";
        version = "1.1.1.2";
      };
      license = "MIT";
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
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.data-msgpack)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.log-warper)
          (hsPkgs.mtl)
          (hsPkgs.MonadRandom)
          (hsPkgs.monad-loops)
          (hsPkgs.monad-control)
          (hsPkgs.mmorph)
          (hsPkgs.network)
          (hsPkgs.pqueue)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.serokell-util)
          (hsPkgs.semigroups)
          (hsPkgs.slave-thread)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.streaming-commons)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.time)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "ping-pong" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.formatting)
            (hsPkgs.log-warper)
            (hsPkgs.mtl)
            (hsPkgs.serokell-util)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time-warp)
            (hsPkgs.time)
          ];
        };
        "socket-state" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.formatting)
            (hsPkgs.lens)
            (hsPkgs.log-warper)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.serokell-util)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time-warp)
            (hsPkgs.time)
          ];
        };
        "net-playground" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.log-warper)
            (hsPkgs.MonadRandom)
            (hsPkgs.data-msgpack)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.serokell-util)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time-units)
            (hsPkgs.time-warp)
            (hsPkgs.transformers)
            (hsPkgs.random)
          ];
        };
        "bench-sender" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.data-msgpack)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.formatting)
            (hsPkgs.hslogger)
            (hsPkgs.log-warper)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.optparse-simple)
            (hsPkgs.serokell-util)
            (hsPkgs.random)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.time-units)
            (hsPkgs.time-warp)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
        "bench-receiver" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.data-msgpack)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.formatting)
            (hsPkgs.hslogger)
            (hsPkgs.log-warper)
            (hsPkgs.mtl)
            (hsPkgs.optparse-simple)
            (hsPkgs.serokell-util)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.time-units)
            (hsPkgs.time-warp)
            (hsPkgs.unordered-containers)
          ];
        };
        "bench-log-reader" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-msgpack)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.formatting)
            (hsPkgs.hslogger)
            (hsPkgs.log-warper)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-simple)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.time-units)
            (hsPkgs.time-warp)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "time-warp-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.log-warper)
            (hsPkgs.data-msgpack)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.serokell-util)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time-units)
            (hsPkgs.time-warp)
            (hsPkgs.transformers)
            (hsPkgs.random)
          ];
        };
      };
    };
  }