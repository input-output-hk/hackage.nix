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
        name = "lmonad";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "";
      url = "";
      synopsis = "LMonad is an Information Flow Control (IFC) framework for Haskell applications.";
      description = "LMonad is an Information Flow Control (IFC) framework for Haskell applications. It can be used to enforce security properties like confidentiality and integrity. It is derived from [LIO](http://hackage.haskell.org/package/lio), but is more general in that it tracks information flow for any monad by using monad transformers.";
      buildType = "Simple";
    };
    components = {
      "lmonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "test-lmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.HUnit)
            (hsPkgs.lmonad)
            (hsPkgs.monad-control)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }