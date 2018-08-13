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
        name = "vectortiles";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/vectortiles";
      url = "";
      synopsis = "GIS Vector Tiles, as defined by Mapbox.";
      description = "GIS Vector Tiles, as defined by Mapbox.\nThis library implements version 2.1 of the official Mapbox spec, as defined\nhere: <https://github.com/mapbox/vector-tile-spec/tree/master/2.1>\n\nNote that currently this library ignores top-level protobuf extensions,\n/Value/ extensions, and /UNKNOWN/ geometries.";
      buildType = "Simple";
    };
    components = {
      "vectortiles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "vectortiles-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hex)
            (hsPkgs.protocol-buffers)
            (hsPkgs.protocol-buffers-descriptor)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vectortiles)
          ];
        };
      };
      benchmarks = {
        "vectortiles-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.hashable)
            (hsPkgs.microlens)
            (hsPkgs.microlens-platform)
            (hsPkgs.protocol-buffers)
            (hsPkgs.protocol-buffers-descriptor)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vectortiles)
          ];
        };
      };
    };
  }