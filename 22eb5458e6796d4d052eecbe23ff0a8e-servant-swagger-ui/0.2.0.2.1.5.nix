{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      servant-0-5 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-swagger-ui";
          version = "0.2.0.2.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/servant-swagger-ui#readme";
        url = "";
        synopsis = "Servant swagger ui";
        description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)";
        buildType = "Simple";
      };
      components = {
        servant-swagger-ui = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.file-embed
            hsPkgs.filepath
            hsPkgs.http-media
            hsPkgs.servant
            hsPkgs.servant-blaze
            hsPkgs.servant-server
            hsPkgs.servant-swagger
            hsPkgs.swagger2
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.wai-app-static
          ] ++ (if _flags.servant-0-5
            then [
              hsPkgs.servant
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]
            else [
              hsPkgs.servant
              hsPkgs.either
            ]);
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.file-embed
              hsPkgs.filepath
              hsPkgs.http-media
              hsPkgs.servant
              hsPkgs.servant-blaze
              hsPkgs.servant-server
              hsPkgs.servant-swagger
              hsPkgs.swagger2
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.wai-app-static
              hsPkgs.servant-swagger-ui
              hsPkgs.servant-server
              hsPkgs.aeson
              hsPkgs.base-compat
              hsPkgs.lens
              hsPkgs.wai
              hsPkgs.warp
            ] ++ (if _flags.servant-0-5
              then [
                hsPkgs.servant
                hsPkgs.transformers
                hsPkgs.transformers-compat
              ]
              else [
                hsPkgs.servant
                hsPkgs.either
              ]);
          };
        };
      };
    }