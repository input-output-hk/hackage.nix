{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "trigger";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Rhys Keepence";
        maintainer = "rhys@rhyskeepence.com";
        author = "Rhys Keepence";
        homepage = "https://github.com/rhyskeepence/trigger";
        url = "";
        synopsis = "Trigger is a cross platform file system watcher for super fast build-and-restart workflows.";
        description = "";
        buildType = "Simple";
      };
      components = {
        trigger = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.clock
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.formatting
            hsPkgs.fsnotify
            hsPkgs.Glob
            hsPkgs.process
            hsPkgs.protolude
            hsPkgs.text
            hsPkgs.time
            hsPkgs.twitch
            hsPkgs.yaml
          ];
        };
        exes = {
          trigger = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.trigger
            ];
          };
        };
        tests = {
          trigger-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.trigger
              hsPkgs.hspec
            ];
          };
        };
      };
    }