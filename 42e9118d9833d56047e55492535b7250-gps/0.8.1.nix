{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gps";
          version = "0.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "For manipulating GPS coordinates and trails.";
        description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations.  NOTE: Version range 0.8.* won't strictly follow PVP - I will be adding additional functions in minor releases 0.8.x.";
        buildType = "Simple";
      };
      components = {
        "gps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.time
            hsPkgs.GPX
            hsPkgs.hxt
            hsPkgs.xsd
            hsPkgs.vector
            hsPkgs.statistics
          ];
        };
      };
    }