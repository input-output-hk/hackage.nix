{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "effects"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "http://github.com/sjoerdvisscher/effects";
      url = "";
      synopsis = "Computational Effects";
      description = "Control.Effects is a library for programming with effects, like in the the Eff language by\nAndrej Bauer and Matija Pretnar. Effects can be used instead of monad transformers.\n\nSee the home page for some example code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.newtype-generics)
          (hsPkgs.void)
          ];
        };
      };
    }