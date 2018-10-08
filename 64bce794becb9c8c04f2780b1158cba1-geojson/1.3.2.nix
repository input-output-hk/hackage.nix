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
        name = "geojson";
        version = "1.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2018";
      maintainer = "Andrew Newman";
      author = "Dom De Re";
      homepage = "https://github.com/newmana/hs-geojson";
      url = "";
      synopsis = "A thin GeoJSON Layer above the aeson library";
      description = "A thin GeoJSON Layer above the aeson library.\n\nIt currently conforms to version 1.0 of the GeoJSON spec which can be found here:\n\n<http://geojson.org/geojson-spec.html>";
      buildType = "Simple";
    };
    components = {
      "geojson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.transformers)
          (hsPkgs.validation)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "geojson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.geojson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.validation)
          ];
        };
        "geojson-hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }