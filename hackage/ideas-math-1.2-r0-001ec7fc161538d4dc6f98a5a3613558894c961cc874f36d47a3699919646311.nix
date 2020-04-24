{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "ideas-math"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2015";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Interactive domain reasoner for logic and mathematics";
      description = "Interactive domain reasoner for logic and mathematics, based on the\nfeedback services of the Ideas framework. Domains supported include\npropositional logic (disjunctive normal form and equivalence proofs),\nmathematics (fractions, polynomial equations, powers, derivatives),\nlinear algebra (Gaussian elimination and linear systems), and relation\nalgebra. The domain reasoner is used by learning environments such as\nthe digital mathematical environment of the Freudenthal Institute, MathDox,\nActiveMath, and the LogEx logic tool.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ideas-math" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."ideas" or ((hsPkgs.pkgs-errors).buildDepError "ideas"))
            ];
          buildable = true;
          };
        };
      };
    }