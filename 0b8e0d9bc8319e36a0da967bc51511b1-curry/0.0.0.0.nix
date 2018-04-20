{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "curry";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m.farkasdyck@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Curry types";
        description = "";
        buildType = "Simple";
      };
      components = {
        curry = {
          depends  = [ hsPkgs.base ];
        };
      };
    }