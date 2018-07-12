{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack-network";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Sean McGroarty";
        maintainer = "Sean McGroarty <mcgroas@tcd.ie>";
        author = "Sean McGroarty";
        homepage = "https://github.com/McGizzle/stack-network#readme";
        url = "";
        synopsis = "A program for extending Stack to add distributed capabilities";
        description = "See README at <https://github.com/McGizzle/stack-network#readme>";
        buildType = "Simple";
      };
      components = {
        "stack-network" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.configurator
            hsPkgs.directory
            hsPkgs.dirstream
            hsPkgs.distributed-process-lifted
            hsPkgs.distributed-process-simplelocalnet
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.pipes
            hsPkgs.pipes-safe
            hsPkgs.process
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          "stack-network" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.clock
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.dirstream
              hsPkgs.distributed-process-lifted
              hsPkgs.distributed-process-simplelocalnet
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.process
              hsPkgs.stack-network
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "distributed-test" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.clock
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.dirstream
              hsPkgs.distributed-process-lifted
              hsPkgs.distributed-process-simplelocalnet
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.process
              hsPkgs.raw-strings-qq
              hsPkgs.stack-network
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.yaml
            ];
          };
        };
      };
    }