{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-regular";
          version = "0.19.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "portable, type-safe URL routing";
        description = "This library adds support for parsing/printing URLs using the regular generics library";
        buildType = "Simple";
      };
      components = {
        web-routes-regular = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.regular
            hsPkgs.text
            hsPkgs.web-routes
          ];
        };
      };
    }