{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      coverage = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libmpd";
          version = "0.7.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Ben Sinclair 2005-2009, Joachim Fasting 2012";
        maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
        author = "Ben Sinclair";
        homepage = "http://github.com/joachifm/libmpd-haskell";
        url = "";
        synopsis = "An MPD client library.";
        description = "A client library for MPD, the Music Player Daemon\n(<http://www.musicpd.org/>).";
        buildType = "Simple";
      };
      components = {
        "libmpd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.containers
          ];
        };
        exes = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.time
              hsPkgs.containers
            ];
          };
        };
      };
    }