{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gps";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "For manipulating GPS coordinates and trails.";
        description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations";
        buildType = "Simple";
      };
      components = {
        gps = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.time
            hsPkgs.GPX
            hsPkgs.hxt
            hsPkgs.xsd
          ];
        };
      };
    }