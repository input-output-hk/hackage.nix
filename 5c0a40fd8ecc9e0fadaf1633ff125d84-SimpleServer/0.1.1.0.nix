{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "SimpleServer";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ajnsit@gmail.com";
        author = "Anupam Jain";
        homepage = "";
        url = "";
        synopsis = "A simple static file server, for when apache is overkill";
        description = "A simple static file server, for when apache is overkill";
        buildType = "Simple";
      };
      components = {
        "SimpleServer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai-routes
            hsPkgs.warp
            hsPkgs.cmdargs
            hsPkgs.dyre
            hsPkgs.transformers
          ];
        };
        exes = {
          "simpleserver" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-routes
              hsPkgs.warp
              hsPkgs.cmdargs
              hsPkgs.dyre
              hsPkgs.transformers
            ];
          };
        };
      };
    }