{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-content-type";
        version = "0.6.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/wai-middleware-content-type#readme";
      url = "";
      synopsis = "Route to different middlewares based on the incoming Accept header.";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/wai-middleware-content-type#readme>";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-content-type" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.exceptions)
          (hsPkgs.extractable-singleton)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.urlpath)
          (hsPkgs.wai)
          (hsPkgs.wai-logger)
          (hsPkgs.wai-transformers)
        ];
      };
      tests = {
        "wai-middleware-content-type-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.exceptions)
            (hsPkgs.extractable-singleton)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.monad-control-aligned)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.shakespeare)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.urlpath)
            (hsPkgs.wai)
            (hsPkgs.wai-logger)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.wai-transformers)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }