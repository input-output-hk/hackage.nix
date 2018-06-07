{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-web";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "";
        homepage = "https://github.com/leptonyu/yam#readme";
        url = "";
        synopsis = "Yam Web";
        description = "base web module for yam";
        buildType = "Simple";
      };
      components = {
        yam-web = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.reflection
            hsPkgs.servant-server
            hsPkgs.servant-swagger
            hsPkgs.servant-swagger-ui
            hsPkgs.string-conversions
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vault
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.yam-logger
          ];
        };
      };
    }