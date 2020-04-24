{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "typography-geometry"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Drawings for printed text documents";
      description = "Drawings for printed text documents";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."polynomials-bernstein" or ((hsPkgs.pkgs-errors).buildDepError "polynomials-bernstein"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }