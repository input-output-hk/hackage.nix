{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      coverage = false;
      old_base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libmpd";
          version = "0.4.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Ben Sinclair 2005-2009, Joachim Fasting 2010";
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
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.utf8-string
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.utf8-string
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }