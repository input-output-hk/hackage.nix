{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "streaming-osm"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 - 2019 Azavea";
      maintainer = "colin@fosskers.ca";
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
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          (hsPkgs.containers)
          (hsPkgs.streaming-attoparsec)
          (hsPkgs.streaming-bytestring)
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
            (hsPkgs.resourcet)
            (hsPkgs.streaming)
            (hsPkgs.vector)
            (hsPkgs.zlib)
            (hsPkgs.streaming-osm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }