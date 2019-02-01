{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "buffon-machines"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Maciej Bendkowski";
      maintainer = "maciej.bendkowski@tcs.uj.edu.pl";
      author = "Maciej Bendkowski";
      homepage = "https://github.com/maciej-bendkowski/buffon-machines#readme";
      url = "";
      synopsis = "Perfect simulation of discrete random variables";
      description = "Monadic implementation of Buffon machines meant for perfect simulation of discrete random variables";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.random)
          (hsPkgs.multiset)
          (hsPkgs.template-haskell)
          (hsPkgs.base)
          ];
        };
      };
    }