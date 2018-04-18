{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hcron";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Timo B. Kranz <me@tbk.name>";
        author = "Timo B. Kranz";
        homepage = "http://github.com/tbh/hcron";
        url = "";
        synopsis = "A simple job scheduler, which just runs some IO action at a given time.";
        description = "A simple job scheduler for Haskell, which just runs some IO () action at a given time.\nCurrently almost all of this package is based on the excellent cron modules found in the\nBuildBox package by Ben Lippmeier.";
        buildType = "Simple";
      };
      components = {
        hcron = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.bytestring
            hsPkgs.stm
          ];
        };
      };
    }