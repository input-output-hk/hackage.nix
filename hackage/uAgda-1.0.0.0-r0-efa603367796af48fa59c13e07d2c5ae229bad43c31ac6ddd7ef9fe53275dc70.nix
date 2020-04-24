{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "uAgda"; version = "1.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A simplistic dependently-typed language with parametricity.";
      description = "uAgda implements an experimental dependently-typed language\n(and proof assistant by the Curry-Howard isomorphism). The\ngoal of the project is twofold:\n\n1. Experiment with a minimalistic language that is strong enough to\nprogram and reason in.\n\n2. Give a simple implementation of its type-checker (ours is ~200 lines).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "uAgda" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."BNFC-meta" or ((hsPkgs.pkgs-errors).buildDepError "BNFC-meta"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
            ];
          buildable = true;
          };
        };
      };
    }