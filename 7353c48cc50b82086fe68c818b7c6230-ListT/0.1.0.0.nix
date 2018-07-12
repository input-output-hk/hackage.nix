{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ListT";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m.farkasdyck@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "List transformer";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ListT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }