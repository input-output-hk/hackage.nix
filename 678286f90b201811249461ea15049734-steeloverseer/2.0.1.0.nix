{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "steeloverseer";
          version = "2.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "efsubenovex@gmail.com";
        author = "Schell Scivally,\nMitchell Rosen";
        homepage = "https://github.com/schell/steeloverseer#readme";
        url = "";
        synopsis = "A file watcher and development tool.";
        description = "A command line tool that responds to filesystem events. Allows the user to automatically execute commands after files are added or updated. Watches files using regular expressions.";
        buildType = "Simple";
      };
      components = {
        steeloverseer = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.fsnotify
            hsPkgs.mtl
            hsPkgs.regex-tdfa
            hsPkgs.resourcet
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.streaming
            hsPkgs.text
            hsPkgs.yaml
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.containers
            hsPkgs.process
          ];
        };
        exes = {
          sos = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.fsnotify
              hsPkgs.mtl
              hsPkgs.regex-tdfa
              hsPkgs.resourcet
              hsPkgs.semigroups
              hsPkgs.stm
              hsPkgs.streaming
              hsPkgs.text
              hsPkgs.yaml
              hsPkgs.steeloverseer
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
            ] ++ pkgs.lib.optional system.isOsx hsPkgs.hfsevents;
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.fsnotify
              hsPkgs.mtl
              hsPkgs.regex-tdfa
              hsPkgs.resourcet
              hsPkgs.semigroups
              hsPkgs.stm
              hsPkgs.streaming
              hsPkgs.text
              hsPkgs.yaml
              hsPkgs.steeloverseer
              hsPkgs.hspec
            ];
          };
        };
      };
    }