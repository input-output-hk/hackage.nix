{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "watcher";
          version = "0.0.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nate@so8r.es";
        author = "So8res";
        homepage = "";
        url = "";
        synopsis = "Opinionated filesystem watcher";
        description = "A filesystem watcher. Triggers added/changed/removed events\nwhen the filesystem changes. Can cache in an SQL database\nand bring itself back up to date after long periods of\ndowntime.";
        buildType = "Simple";
      };
      components = {
        watcher = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.containers
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.hinotify
          ];
        };
      };
    }