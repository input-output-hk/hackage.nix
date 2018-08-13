{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-content-type";
        version = "0.1.1";
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
      "wai-middleware-content-type" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.pandoc)
          (hsPkgs.resourcet)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.urlpath)
          (hsPkgs.wai)
          (hsPkgs.wai-transformers)
          (hsPkgs.wai-util)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.resourcet)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.urlpath)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-util)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.resourcet)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.urlpath)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-util)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }