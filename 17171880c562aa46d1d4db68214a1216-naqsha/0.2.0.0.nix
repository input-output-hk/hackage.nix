{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "naqsha";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ppk@cse.iitk.ac.in";
        author = "Piyush P Kurur";
        homepage = "http://github.com/naqsha/naqsha.git";
        url = "";
        synopsis = "A library for working with geospatial data types.";
        description = "Naqsha is a library to work with geospatial data types like latitudes and longitudes. It provides\nsome basic operations like distance calculations.";
        buildType = "Simple";
      };
      components = {
        naqsha = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.groups
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.groups
              hsPkgs.hspec
              hsPkgs.naqsha
            ];
          };
        };
      };
    }