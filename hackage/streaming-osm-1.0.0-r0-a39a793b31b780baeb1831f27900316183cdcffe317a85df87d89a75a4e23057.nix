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
        name = "streaming-osm";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Azavea";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "";
      url = "";
      synopsis = "A hand-written streaming byte parser for OpenStreetMap Protobuf data.";
      description = "A hand-written streaming byte parser for OpenStreetMap Protobuf data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.streaming)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          (hsPkgs.containers)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-utils)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "streaming-osm-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.streaming)
            (hsPkgs.vector)
            (hsPkgs.zlib)
            (hsPkgs.streaming-osm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "streaming-osm-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.streaming)
            (hsPkgs.vector)
            (hsPkgs.zlib)
            (hsPkgs.criterion)
            (hsPkgs.streaming-osm)
          ];
        };
      };
    };
  }