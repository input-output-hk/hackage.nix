{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-middleware-cache";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
        author = "Alexander Dorofeev <aka.spin@gmail.com>";
        homepage = "https://github.com/akaspin/wai-middleware-cache";
        url = "";
        synopsis = "Caching middleware for WAI.";
        description = "This package provides cache middleware and abstract type for\ncreating cache backends.";
        buildType = "Simple";
      };
      components = {
        wai-middleware-cache = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.http-types
          ];
        };
      };
    }