{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-web-routes";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luke.randall@gmail.com";
        author = "Luke Randall";
        homepage = "http://github.com/lukerandall/snap-web-routes";
        url = "";
        synopsis = "Type safe URLs for Snap";
        description = "Type safe URL generation and routing for Snap using web-routes";
        buildType = "Simple";
      };
      components = {
        "snap-web-routes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.heist
            hsPkgs.mtl
            hsPkgs.snap-core
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.web-routes
            hsPkgs.xmlhtml
          ];
        };
      };
    }