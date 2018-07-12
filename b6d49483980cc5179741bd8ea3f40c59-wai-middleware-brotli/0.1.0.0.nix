{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-brotli";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Ian Duncan";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "https://github.com/iand675/wai-middleware-brotli#readme";
        url = "";
        synopsis = "WAI middleware for brotli compression";
        description = "";
        buildType = "Simple";
      };
      components = {
        "wai-middleware-brotli" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.hs-brotli
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.binary
            hsPkgs.unix
          ];
        };
        exes = {
          "wai-middleware-brotli-server" = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-types
              hsPkgs.warp
              hsPkgs.wai-extra
              hsPkgs.wai-middleware-brotli
              hsPkgs.wai
              hsPkgs.wai-app-static
            ];
          };
        };
        tests = {
          "wai-middleware-brotli-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs-brotli
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-middleware-brotli
            ];
          };
        };
      };
    }