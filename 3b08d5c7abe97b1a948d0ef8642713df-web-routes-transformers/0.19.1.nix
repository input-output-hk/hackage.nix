{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-transformers";
          version = "0.19.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Extends web-routes with some transformers instances for RouteT";
        description = "";
        buildType = "Simple";
      };
      components = {
        "web-routes-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.web-routes
          ];
        };
      };
    }