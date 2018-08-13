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
      specVersion = "1.8";
      identifier = {
        name = "kickass-torrents-dump-parser";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2013 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "";
      url = "";
      synopsis = "Parses kat.ph torrent dumps";
      description = "Parses kat.ph torrent dumps, see http://kat.ph/api/";
      buildType = "Simple";
    };
    components = {
      "kickass-torrents-dump-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.text)
            (hsPkgs.string-qq)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }