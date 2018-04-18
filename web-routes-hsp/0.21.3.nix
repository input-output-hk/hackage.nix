{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-hsp";
          version = "0.21.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Adds XMLGenerator instance for RouteT monad";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-hsp = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsx
            hsPkgs.hsp
            hsPkgs.web-routes
            hsPkgs.text
          ];
        };
      };
    }