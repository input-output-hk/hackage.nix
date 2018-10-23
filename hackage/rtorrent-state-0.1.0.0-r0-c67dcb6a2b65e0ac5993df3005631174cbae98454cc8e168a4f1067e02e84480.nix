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
        name = "rtorrent-state";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Mateusz Kowalczyk, 2014";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "http://github.com/Fuuzetsu/rtorrent-state";
      url = "";
      synopsis = "Parsing and manipulation of rtorrent state file contents";
      description = "Parsing and manipulation of rtorrent state file contents";
      buildType = "Simple";
    };
    components = {
      "rtorrent-state" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bencoding)
          (hsPkgs.utf8-string)
          (hsPkgs.lens)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bencoding)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.rtorrent-state)
            (hsPkgs.temporary)
            (hsPkgs.utf8-string)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }