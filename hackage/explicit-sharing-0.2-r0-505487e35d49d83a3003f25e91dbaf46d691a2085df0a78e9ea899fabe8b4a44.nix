{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "explicit-sharing";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Chung-chieh Shan, Oleg Kiselyov, and Sebastian Fischer";
      homepage = "";
      url = "";
      synopsis = "Explicit Sharing of Monadic Effects";
      description = "This package implements a monad transformer for sharing monadic\neffects of monads for non-determinism.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }