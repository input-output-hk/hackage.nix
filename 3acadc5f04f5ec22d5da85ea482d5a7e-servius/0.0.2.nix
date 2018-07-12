{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "servius";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
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
          "servius" = {
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