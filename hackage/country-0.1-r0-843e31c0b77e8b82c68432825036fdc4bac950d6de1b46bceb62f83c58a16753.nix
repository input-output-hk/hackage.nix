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
        name = "country";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/country#readme";
      url = "";
      synopsis = "Country data type and functions";
      description = "The `country` library provides a data type for dealing with\nthe set of countries as defined by ISO 3166. The representation\nis compact and is well-suited to use with vectors and\nprimitive arrays. Additionally, this library exports functions\nthat provide the following encodings and decodings:\n\n* ISO Alpha-2 (two-letter country code)\n\n* ISO Alpha-3 (three-letter country code)\n\n* ISO Numeric (three-digit country code)\n\nPlease open up an issue on github if there is anything\nyou would like to see added.";
      buildType = "Simple";
    };
    components = {
      "country" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.unordered-containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.country)
          ];
        };
      };
    };
  }