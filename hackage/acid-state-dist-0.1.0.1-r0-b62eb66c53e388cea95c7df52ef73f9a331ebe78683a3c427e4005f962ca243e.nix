{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "acid-state-dist"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "<max.voit+hdv@with-eyes.net>";
      author = "Max Voit";
      homepage = "";
      url = "";
      synopsis = "A replication backend for acid-state";
      description = "This package provides a backend to AcidState featuring\nMasterState and SlaveState. Using these allows you to run\nan acid-state application in a distributed setup, working\nwith the same state everywhere. Optionally redundancy\nguarantees are available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.safecopy)
          (hsPkgs.acid-state)
          (hsPkgs.concurrent-extra)
          (hsPkgs.cereal)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.semigroups)
          (hsPkgs.safe)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "Simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "SlaveUpdates" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "CRCFail" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "CheckpointSync" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "OrderingRandom" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "NReplication" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "UpdateError" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "SyncTimeout" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        };
      benchmarks = {
        "Local" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            ];
          };
        "MasterOnly" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "MasterSlave" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        "Slave" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.safecopy)
            (hsPkgs.acid-state)
            (hsPkgs.acid-state-dist)
            ];
          };
        };
      };
    }