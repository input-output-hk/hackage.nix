{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "functor";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m.farkasdyck@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Functors";
        description = "";
        buildType = "Simple";
      };
      components = {
        functor = {
          depends  = [
            hsPkgs.base
            hsPkgs.category
          ];
        };
      };
    }