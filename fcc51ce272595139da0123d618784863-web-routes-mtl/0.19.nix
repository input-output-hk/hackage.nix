{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-mtl";
          version = "0.19";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Extends web-routes with mtl-based MonadIO / MonadTrans RouteT instances";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.web-routes
          ];
        };
      };
    }