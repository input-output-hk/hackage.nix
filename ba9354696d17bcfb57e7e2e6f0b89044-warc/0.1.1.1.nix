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
        name = "warc";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/warc";
      url = "";
      synopsis = "A parser for the Web Archive (WARC) format";
      description = "A streaming parser for the Web Archive (WARC) format.";
      buildType = "Simple";
    };
    components = {
      "warc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.either)
          (hsPkgs.free)
          (hsPkgs.errors)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
    };
  }