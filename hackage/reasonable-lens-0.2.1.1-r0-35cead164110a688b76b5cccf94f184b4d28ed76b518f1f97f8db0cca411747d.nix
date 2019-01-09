{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "reasonable-lens"; version = "0.2.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          ];
        };
      };
    }