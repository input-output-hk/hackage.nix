{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "titlecase"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Nikita Karetnikov,\nPeter Simons,\nAaron Wolf,\nSerg Nesterov";
      homepage = "https://github.com/peti/titlecase#readme";
      url = "";
      synopsis = "Convert English Words to Title Case";
      description = "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "titlecase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."titlecase" or ((hsPkgs.pkgs-errors).buildDepError "titlecase"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."titlecase" or ((hsPkgs.pkgs-errors).buildDepError "titlecase"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }