{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "servius";
          version = "1.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/hamlet";
        url = "";
        synopsis = "Serve Shakespearean templates via Warp";
        description = "Does not support any variable interpolation. Supports Hamlet and Lucius files (must have .hamlet and .lucius file extensions, respectively).";
        buildType = "Simple";
      };
      components = {
        exes = {
          servius = {
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
              hsPkgs.blaze-builder
              hsPkgs.blaze-html
              hsPkgs.http-types
              hsPkgs.hamlet
              hsPkgs.shakespeare-css
              hsPkgs.transformers
              hsPkgs.wai
            ];
          };
        };
      };
    }