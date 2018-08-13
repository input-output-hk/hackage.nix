{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "libmpd";
        version = "0.8.0.1";
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
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }