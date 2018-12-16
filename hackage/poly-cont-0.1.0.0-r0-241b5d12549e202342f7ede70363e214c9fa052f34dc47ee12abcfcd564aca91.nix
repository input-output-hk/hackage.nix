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
      specVersion = "1.10";
      identifier = {
        name = "poly-cont";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 David Feuer";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "";
      url = "";
      synopsis = "Poly-kinded continuations";
      description = "Poly-kinded versions of @Cont@ and @ContT@ from\n\"Control.Monad.Trans.Cont\". Currently, @Cont@ is\nnot defined in terms of \"ContT\". When unlifted\nnewtypes become available, that may change.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }