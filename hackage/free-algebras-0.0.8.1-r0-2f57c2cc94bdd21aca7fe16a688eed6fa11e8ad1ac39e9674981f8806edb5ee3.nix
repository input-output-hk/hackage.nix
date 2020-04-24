{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "free-algebras"; version = "0.0.8.1"; };
      license = "MPL-2.0";
      copyright = "(c) 2018-2019 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-algebras#readme";
      url = "";
      synopsis = "Free algebras";
      description = "Algebraic approach to free algebras, inspired by Univeral Algebra and\nCategory Theory, including higher kinded algebraic structures like functors,\napplicative functors, monads or categories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."groups" or ((hsPkgs.pkgs-errors).buildDepError "groups"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test-free-algebras" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."groups" or ((hsPkgs.pkgs-errors).buildDepError "groups"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }