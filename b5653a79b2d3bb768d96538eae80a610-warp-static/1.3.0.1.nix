{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp-static";
          version = "1.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "Static file server based on Warp and wai-app-static";
        description = "Serve up static files by running the warp executable. Based on Warp and wai-app-static.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "warp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.warp
              hsPkgs.wai-app-static
              hsPkgs.wai-extra
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.mime-types
            ];
          };
        };
      };
    }