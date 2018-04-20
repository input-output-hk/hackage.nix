{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build_fs_events = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "delta";
          version = "0.2.1.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "christof.schramm@campus.lmu.de";
        author = "Christof Schramm";
        homepage = "https://github.com/kryoxide/delta";
        url = "";
        synopsis = "A library for detecting file changes";
        description = "Delta is a library for detecting file changes in any given\ndirectory. The package is written using the sodium FRP library\nbut it also provides a callback based API.\nThe project also contains an executable, delta-run, which\nallows you to run arbitrary shell commands when a file in a\ndirectory (recursively) changes.";
        buildType = "Simple";
      };
      components = {
        delta = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.sodium
          ] ++ pkgs.lib.optional (system.isOsx && _flags.build_fs_events) hsPkgs.hfsevents;
        };
        exes = {
          delta-cli = {
            depends  = [
              hsPkgs.base
              hsPkgs.delta
            ];
          };
          delta-run = {
            depends  = [
              hsPkgs.base
              hsPkgs.delta
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.sodium
            ];
          };
        };
      };
    }