{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-websockets";
          version = "0.2.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/yesod";
        url = "";
        synopsis = "WebSockets support for Yesod";
        description = "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>";
        buildType = "Simple";
      };
      components = {
        "yesod-websockets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-websockets
            hsPkgs.websockets
            hsPkgs.transformers
            hsPkgs.yesod-core
            hsPkgs.monad-control
            hsPkgs.conduit
            hsPkgs.async
            hsPkgs.enclosed-exceptions
          ];
        };
      };
    }