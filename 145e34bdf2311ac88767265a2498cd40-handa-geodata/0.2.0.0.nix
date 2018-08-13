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
        name = "handa-geodata";
        version = "0.2.0.0";
      };
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
      "handa-geodata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.scientific)
        ];
      };
      exes = {
        "handa-test-geojson" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.handa-geodata)
            (hsPkgs.scientific)
          ];
        };
        "handa-geojson-to-vtk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.handa-geodata)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }