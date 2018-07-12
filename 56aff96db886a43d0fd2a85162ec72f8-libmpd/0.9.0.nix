{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libmpd";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "Ben Sinclair 2005-2009, Joachim Fasting 2012-2014";
        maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
        author = "Ben Sinclair";
        homepage = "http://github.com/vimus/libmpd-haskell#readme";
        url = "";
        synopsis = "An MPD client library.";
        description = "A client library for MPD, the Music Player Daemon.";
        buildType = "Simple";
      };
      components = {
        "libmpd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.network
            hsPkgs.utf8-string
          ];
        };
        tests = {
          "specs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.network
              hsPkgs.utf8-string
              hsPkgs.unix
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }