{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vectortiles"; version = "1.2.0.5"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."protobuf" or ((hsPkgs.pkgs-errors).buildDepError "protobuf"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "vectortiles-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."protobuf" or ((hsPkgs.pkgs-errors).buildDepError "protobuf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hex" or ((hsPkgs.pkgs-errors).buildDepError "hex"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."vectortiles" or ((hsPkgs.pkgs-errors).buildDepError "vectortiles"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "vectortiles-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."protobuf" or ((hsPkgs.pkgs-errors).buildDepError "protobuf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."vectortiles" or ((hsPkgs.pkgs-errors).buildDepError "vectortiles"))
            ];
          buildable = true;
          };
        };
      };
    }