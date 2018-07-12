{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DimensionalHash";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ghamrouni@iptechinside.com";
        author = "Ghassen Hamrouni";
        homepage = "";
        url = "";
        synopsis = "2 and 3 dimensional hash using Morton numbers.";
        description = "This library compute the Morton numbers in 2d and 3d.\nIt transforms integers x, y to a single integer z.\nThe hash z has the property : if (x, y) and (x2, y2)\nare close then their Morton numbers are close.";
        buildType = "Simple";
      };
      components = {
        "DimensionalHash" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }