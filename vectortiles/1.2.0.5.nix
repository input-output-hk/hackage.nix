{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vectortiles";
          version = "1.2.0.5";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "cwoodbury@azavea.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/vectortiles";
        url = "";
        synopsis = "GIS Vector Tiles, as defined by Mapbox.";
        description = "GIS Vector Tiles, as defined by Mapbox.\n\nThis library implements version 2.1 of the official Mapbox spec, as defined\nhere: <https://github.com/mapbox/vector-tile-spec/tree/master/2.1>\n\nNote that currently this library ignores top-level protobuf extensions,\n/Value/ extensions, and /UNKNOWN/ geometries.\n\nThe order in which to explore the modules of this library is as follows:\n\n1. \"Geography.VectorTile.VectorTile\" (high-level types)\n\n2. \"Geography.VectorTile.Geometry\" (typical GIS geometry types)\n\n3. \"Geography.VectorTile.Protobuf\" (mid-level representation of parsed protobuf data with conversion functions)";
        buildType = "Simple";
      };
      components = {
        vectortiles = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.protobuf
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.deepseq
            hsPkgs.transformers
          ];
        };
        tests = {
          vectortiles-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.protobuf
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.hex
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.vectortiles
            ];
          };
        };
        benchmarks = {
          vectortiles-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.protobuf
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.criterion
              hsPkgs.microlens
              hsPkgs.microlens-platform
              hsPkgs.vectortiles
            ];
          };
        };
      };
    }