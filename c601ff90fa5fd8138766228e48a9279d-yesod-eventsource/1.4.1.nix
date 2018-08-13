{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-eventsource";
        version = "1.4.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Server-sent events support for Yesod apps.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-eventsource>";
      buildType = "Simple";
    };
    components = {
      "yesod-eventsource" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.conduit)
          (hsPkgs.wai)
          (hsPkgs.wai-eventsource)
          (hsPkgs.wai-extra)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
        ];
      };
    };
  }