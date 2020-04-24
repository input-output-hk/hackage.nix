{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "buffon-machines"; version = "1.1.0.0"; };
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
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }