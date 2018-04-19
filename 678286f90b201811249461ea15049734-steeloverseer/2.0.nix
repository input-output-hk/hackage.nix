{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "steeloverseer";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "schell.scivally@synapsegrop.com";
        author = "Schell Scivally, Mitchell Rosen";
        homepage = "https://github.com/schell/steeloverseer";
        url = "";
        synopsis = "A file watcher and development tool.";
        description = "A command line tool that responds to filesystem events.\nAllows the user to automatically execute commands after\nfiles are added or updated. Watches files using regular\nexpressions.";
        buildType = "Simple";
      };
      components = {
        steeloverseer = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.microlens
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.semigroups
            hsPkgs.regex-tdfa
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.yaml
          ];
        };
        exes = {
          sos = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.fsnotify
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.regex-tdfa
              hsPkgs.semigroups
              hsPkgs.steeloverseer
              hsPkgs.yaml
            ];
          };
        };
      };
    }