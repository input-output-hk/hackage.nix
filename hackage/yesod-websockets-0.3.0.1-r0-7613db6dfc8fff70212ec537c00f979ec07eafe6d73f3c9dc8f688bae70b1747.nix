{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-websockets";
        version = "0.3.0.1";
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
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
          (hsPkgs.yesod-core)
        ];
      };
    };
  }