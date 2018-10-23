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
        name = "wai-middleware-verbs";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/wai-middleware-verbs#readme";
      url = "";
      synopsis = "Route Wai middlewares based on HTTP verbs";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/wai-middleware-verbs#readme>";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-verbs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.mmorph)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ];
      };
    };
  }