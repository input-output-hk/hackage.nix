{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "warc";
        version = "1.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.attoparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.free)
          (hsPkgs.errors)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.mmorph)
        ];
      };
      exes = {
        "warc-export" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warc)
            (hsPkgs.filepath)
            (hsPkgs.exceptions)
            (hsPkgs.pipes-zlib)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.free)
            (hsPkgs.errors)
            (hsPkgs.time)
            (hsPkgs.text)
          ];
        };
      };
    };
  }