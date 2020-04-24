{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Fin"; version = "0.2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Finite totally-ordered sets";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."peano" or ((hsPkgs.pkgs-errors).buildDepError "peano"))
          (hsPkgs."alg" or ((hsPkgs.pkgs-errors).buildDepError "alg"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foldable1" or ((hsPkgs.pkgs-errors).buildDepError "foldable1"))
          (hsPkgs."natural-induction" or ((hsPkgs.pkgs-errors).buildDepError "natural-induction"))
          ];
        buildable = true;
        };
      };
    }