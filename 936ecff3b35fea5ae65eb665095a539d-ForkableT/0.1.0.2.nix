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
      specVersion = "1.8";
      identifier = {
        name = "ForkableT";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andras Slemmer";
      author = "";
      homepage = "https://github.com/exFalso/ForkableT/";
      url = "";
      synopsis = "Forkable monad transformers";
      description = "Provides two classes for modular handling of forking";
      buildType = "Simple";
    };
    components = {
      "ForkableT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
        ];
      };
    };
  }