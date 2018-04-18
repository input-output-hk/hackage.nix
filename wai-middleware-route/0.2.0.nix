{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-middleware-route";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aka.spin@gmail.com";
        author = "Alexander Dorofeev";
        homepage = "https://github.com/akaspin/wai-middleware-route";
        url = "";
        synopsis = "Wai routing middleware";
        description = "\\\"Just enough\\\" request dispatching Middleware for Wai.";
        buildType = "Simple";
      };
      components = {
        wai-middleware-route = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.regex-posix
            hsPkgs.http-types
          ];
        };
      };
    }