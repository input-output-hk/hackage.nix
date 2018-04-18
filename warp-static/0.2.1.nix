{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "warp-static";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/warp-static";
        url = "";
        synopsis = "Static file server based on Warp and wai-app-static";
        description = "Static file server based on Warp and wai-app-static";
        buildType = "Simple";
      };
      components = {
        exes = {
          warp = {
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
            ];
          };
        };
      };
    }