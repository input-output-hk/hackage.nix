{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "naqsha"; version = "0.3.0.1"; };
      license = "(Apache-2.0 OR BSD-3-Clause)";
      copyright = "(c) 2016 Piyush P Kurur";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "http://github.com/naqsha/naqsha.git";
      url = "";
      synopsis = "A library for working with anything map related.";
      description = "Naqsha is a library to work with geospatial data types,\nlike latitudes and longitudes, mapping projects like openstreetmap,\nvarious map related file formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.groups)
          (hsPkgs.vector)
          (hsPkgs.geospatial)
          ];
        };
      sublibs = {
        "geospatial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.groups)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.groups)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.geospatial)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }