{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-content-type";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Route to different middlewares based on the incoming Accept header.";
        description = "";
        buildType = "Simple";
      };
      components = {
        wai-middleware-content-type = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.clay
            hsPkgs.containers
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.lucid
            hsPkgs.mtl
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-transformers
            hsPkgs.wai-util
          ];
        };
      };
    }