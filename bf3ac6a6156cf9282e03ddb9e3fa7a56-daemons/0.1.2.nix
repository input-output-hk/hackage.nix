{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "daemons";
          version = "0.1.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/daemons";
        url = "";
        synopsis = "Daemons in Haskell made fun and easy";
        description = "\"Control.Pipe.C3\" provides simple RPC-like wrappers for pipes.\n\n\"Control.Pipe.Serialize\" provides serialization and\nincremental deserialization pipes.\n\n\"Control.Pipe.Socket\" provides functions to setup pipes around\nsockets.\n\n\"System.Daemon\" provides a high-level interface to starting\ndaemonized programs that are controlled through sockets.\n\n\"System.Posix.Daemon\" provides a low-level interface to\nstarting, and controlling detached jobs.\n\nSee the @README.md@ file and the homepage for details.";
        buildType = "Simple";
      };
      components = {
        daemons = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.network
            hsPkgs.pipes
            hsPkgs.transformers
            hsPkgs.unix
          ];
        };
        exes = {
          memo = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.ghc-prim
            ];
          };
          addone = {
            depends  = [
              hsPkgs.base
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.ghc-prim
            ];
          };
          queue = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.ghc-prim
              hsPkgs.network
              hsPkgs.pipes
              hsPkgs.transformers
            ];
          };
          name = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.ghc-prim
            ];
          };
        };
        tests = {
          daemon = {
            depends  = [
              hsPkgs.base
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.unix
            ];
          };
        };
      };
    }