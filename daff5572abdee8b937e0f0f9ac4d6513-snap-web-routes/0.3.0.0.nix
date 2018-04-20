{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-web-routes";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luke.randall@gmail.com";
        author = "Luke Randall";
        homepage = "https://github.com/lukerandall/snap-web-routes";
        url = "";
        synopsis = "Type safe URLs for Snap";
        description = "Type safe URL generation and routing for Snap using web-routes.\n\nTo get started, run through the tutorial in Snap.Web.Routes.\n\nThis builds on <https://github.com/stepcut/snap-web-routes-demo work>\ndone by Jeremy Shaw. Thanks Jeremy!";
        buildType = "Simple";
      };
      components = {
        snap-web-routes = {
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