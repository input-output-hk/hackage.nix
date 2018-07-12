{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-foundation";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Glue code for using Happstack with acid-state, web-routes, reform, and HSP";
        description = "happstack-foundation is a library which builds on top of existing components\nto provide a powerful and type-safe environment for web development. It uses:\n\nhappstack-server for the underlying HTTP support\n\nHSP for HTML templates\n\nweb-routes for type-safe URL routing\n\nreform for type-safe form generation and validation\n\nacid-state for persistent data storage";
        buildType = "Simple";
      };
      components = {
        "happstack-foundation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.acid-state
            hsPkgs.happstack-hsp
            hsPkgs.happstack-server
            hsPkgs.hsp
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.text
            hsPkgs.web-routes
            hsPkgs.web-routes-happstack
            hsPkgs.web-routes-hsp
            hsPkgs.web-routes-th
          ];
        };
      };
    }