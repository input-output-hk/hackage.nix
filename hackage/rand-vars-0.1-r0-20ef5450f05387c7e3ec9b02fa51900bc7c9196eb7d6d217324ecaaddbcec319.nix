{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rand-vars"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Romain Edelmann";
      author = "Romain Edelmann";
      homepage = "";
      url = "";
      synopsis = "Random variable library, with Functor, Applicative and Monad instances.";
      description = "Random variable library, with Functor, Applicative and Monad instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."IntervalMap" or ((hsPkgs.pkgs-errors).buildDepError "IntervalMap"))
          ];
        buildable = true;
        };
      };
    }