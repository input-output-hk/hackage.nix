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
      specVersion = "1.10";
      identifier = {
        name = "yesod-worker";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jamesdabbs@gmail.com";
      author = "James Dabbs";
      homepage = "https://github.com/jamesdabbs/yesod-worker";
      url = "";
      synopsis = "Drop-in(ish) background worker system for Yesod apps";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yesod-worker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.resourcet)
          (hsPkgs.persistent)
          (hsPkgs.yesod)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-control)
          (hsPkgs.template-haskell)
          (hsPkgs.fast-logger)
          (hsPkgs.yesod-core)
        ];
      };
    };
  }