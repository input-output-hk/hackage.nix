{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "handa-geodata"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Brian W Bush";
      maintainer = "code@bwbush.io";
      author = "Brian W Bush";
      homepage = "http://code.bwbush.io/handa-geodata/";
      url = "http://code.bwbush.io/handa-geodata/downloads";
      synopsis = "Geographic and Geometric Data";
      description = "This package contains functions, types, and classes for manipulating geographic and geometric data.\n\nThe package supports parsing of GeoJSON 1.0 < <http://geojson.org/geojson-spec.html>>.\n\nThe package also has rudimentary support for the Visualization Toolkit (VTK) 4.2 < <http://www.vtk.org/VTK/img/file-formats.pdf>>.  An executable is provided for converting GeoJSON files to VTK ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          ];
        buildable = true;
        };
      exes = {
        "handa-test-geojson" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."handa-geodata" or ((hsPkgs.pkgs-errors).buildDepError "handa-geodata"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            ];
          buildable = true;
          };
        "handa-geojson-to-vtk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."handa-geodata" or ((hsPkgs.pkgs-errors).buildDepError "handa-geodata"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }