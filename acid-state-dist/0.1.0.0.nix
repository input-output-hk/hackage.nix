{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acid-state-dist";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "<max.voit+hdv@with-eyes.net>";
        author = "Max Voit";
        homepage = "";
        url = "";
        synopsis = "Replication backend for acid-state";
        description = "";
        buildType = "Simple";
      };
      components = {
        acid-state-dist = {
          depends  = [
            hsPkgs.base
            hsPkgs.safecopy
            hsPkgs.acid-state
            hsPkgs.concurrent-extra
            hsPkgs.cereal
            hsPkgs.zeromq4-haskell
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.semigroups
            hsPkgs.safe
            hsPkgs.filepath
            hsPkgs.mtl
          ];
        };
        tests = {
          Simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          SlaveUpdates = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          CRCFail = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          CheckpointSync = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          OrderingRandom = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          NReplication = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          UpdateError = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          SyncTimeout = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
        };
        benchmarks = {
          Local = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.safecopy
              hsPkgs.acid-state
            ];
          };
          MasterOnly = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          MasterSlave = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
          Slave = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.safecopy
              hsPkgs.acid-state
              hsPkgs.acid-state-dist
            ];
          };
        };
      };
    }