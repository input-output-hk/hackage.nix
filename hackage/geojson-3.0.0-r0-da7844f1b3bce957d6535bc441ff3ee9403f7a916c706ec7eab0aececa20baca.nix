{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geojson"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2018";
      maintainer = "Andrew Newman";
      author = "Dom De Re";
      homepage = "https://github.com/indicatrix/hs-geojson";
      url = "";
      synopsis = "A thin GeoJSON Layer above the aeson library";
      description = "A thin GeoJSON Layer above the aeson library.\n\nIt currently conforms to version 1.0 of the GeoJSON spec which can be found here:\n\n<http://geojson.org/geojson-spec.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.geojson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.validation)
            (hsPkgs.vector)
            ];
          };
        "geojson-hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }