{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "libmpd";
        version = "0.9.0.2";
      };
      license = "MIT";
      copyright = "Ben Sinclair 2005-2009, Joachim Fasting 2007-2015,\nDaniel Schoepe 2009, Andrzej Rybczak 2010,\nSimon Hengel 2011-2014, Niklas Haas 2012,\nMatvey Aksenov 2014, Wieland Hoffmann 2014,\nTim Heap 2014, Tobias Brandt 2014";
      maintainer = "Joachim Fasting <joachifm@fastmail.fm>";
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
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.data-default-class)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
        ] ++ [ (hsPkgs.time) ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.data-default-class)
            (hsPkgs.network)
            (hsPkgs.utf8-string)
            (hsPkgs.unix)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }