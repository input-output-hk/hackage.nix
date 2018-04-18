{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Data-Angle";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kecskes.adam@outlook.com";
        author = "Adam Kecskes";
        homepage = "https://github.com/deadmanswitch/Data.Angle";
        url = "";
        synopsis = "Geometric angles";
        description = "A library for dealing with geometric angles (Degrees, Turns, Radians). For the sake of simplicity, the angles are represented in Radians";
        buildType = "Simple";
      };
      components = {
        Data-Angle = {
          depends  = [ hsPkgs.base ];
        };
      };
    }