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
        name = "reasonable-lens";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "Tokiwo Ousaka";
      author = "Tokiwo Ousaka";
      homepage = "https://github.com/tokiwoousaka/reasonable-lens";
      url = "";
      synopsis = "Lens implementation. It is more small but adequately.";
      description = "Just size lens implementation.";
      buildType = "Simple";
    };
    components = {
      "reasonable-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
        ];
      };
    };
  }