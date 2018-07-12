{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "steeloverseer";
          version = "2.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "schell@takt.com";
        author = "Schell Scivally,\nMitchell Rosen";
        homepage = "https://github.com/schell/steeloverseer#readme";
        url = "";
        synopsis = "A file watcher and development tool.";
        description = "A command line tool that responds to filesystem events. Allows the user to automatically execute commands after files are added or updated. Watches files using regular expressions.";
        buildType = "Simple";
      };
      components = {
        "steeloverseer" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.fsnotify
            hsPkgs.managed
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.regex-tdfa
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.streaming
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.yaml
          ];
        };
        exes = {
          "sos" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.managed
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.regex-tdfa
              hsPkgs.semigroups
              hsPkgs.steeloverseer
              hsPkgs.stm
              hsPkgs.streaming
              hsPkgs.text
              hsPkgs.yaml
            ] ++ pkgs.lib.optional system.isOsx hsPkgs.hfsevents;
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.fsnotify
              hsPkgs.hspec
              hsPkgs.managed
              hsPkgs.mtl
              hsPkgs.regex-tdfa
              hsPkgs.semigroups
              hsPkgs.steeloverseer
              hsPkgs.stm
              hsPkgs.streaming
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
      };
    }