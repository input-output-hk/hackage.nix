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
        name = "vectortiles";
        version = "1.1.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "cwoodbury@azavea.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/vectortiles";
      url = "";
      synopsis = "GIS Vector Tiles, as defined by Mapbox.";
      description = "GIS Vector Tiles, as defined by Mapbox.\n\nThis library implements version 2.1 of the official Mapbox spec, as defined\nhere: <https://github.com/mapbox/vector-tile-spec/tree/master/2.1>\n\nNote that currently this library ignores top-level protobuf extensions,\n/Value/ extensions, and /UNKNOWN/ geometries.\n\nThe order in which to explore the modules of this library is as follows:\n\n1. \"Geography.VectorTile.VectorTile\" (high-level types)\n2. \"Geography.VectorTile.Geometry\" (typical GIS geometry types)\n3. \"Geography.VectorTile.Protobuf\" (mid-level representation of parsed protobuf data with conversion functions)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.protobuf)
          (hsPkgs.deepseq)
          (hsPkgs.th-printf)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "vectortiles-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.vectortiles)
            (hsPkgs.protobuf)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.hex)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "vectortiles-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.vectortiles)
            (hsPkgs.protobuf)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.microlens)
            (hsPkgs.microlens-platform)
            (hsPkgs.text)
          ];
        };
      };
    };
  }