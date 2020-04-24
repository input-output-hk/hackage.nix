{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "titlecase"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Nikita Karetnikov";
      maintainer = "nikita@karetnikov.org";
      author = "Nikita Karetnikov";
      homepage = "https://github.com/nkaretnikov/titlecase";
      url = "";
      synopsis = "Convert English words to title case";
      description = "Capitalize all English words except articles (a, an, the),\ncoordinating conjunctions (for, and, nor, but, or, yet, so), and\nprepositions (unless they begin or end the title).  The\nprepositions are taken from this list:\n<https://en.wikipedia.org/wiki/List_of_English_prepositions>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."titlecase" or ((hsPkgs.pkgs-errors).buildDepError "titlecase"))
            ];
          buildable = true;
          };
        };
      };
    }