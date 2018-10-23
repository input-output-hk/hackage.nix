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
        name = "haskell-reflect";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Reflect Haskell types.";
      description = "Reflect Haskell types.";
      buildType = "Simple";
    };
    components = {
      "haskell-reflect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.hint)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.MonadCatchIO-mtl)
        ];
      };
      exes = {
        "hsreflect" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-reflect)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.hint)
            (hsPkgs.parsec)
            (hsPkgs.template-haskell)
            (hsPkgs.MonadCatchIO-mtl)
          ];
        };
      };
    };
  }