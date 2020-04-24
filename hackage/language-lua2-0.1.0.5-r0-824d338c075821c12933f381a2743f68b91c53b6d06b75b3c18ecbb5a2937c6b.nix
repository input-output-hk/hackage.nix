{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { exes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-lua2"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "http://github.com/mitchellwrosen/language-lua2";
      url = "";
      synopsis = "Lua parser and pretty printer";
      description = "Lua parser and pretty printer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Earley" or ((hsPkgs.pkgs-errors).buildDepError "Earley"))
          (hsPkgs."lexer-applicative" or ((hsPkgs.pkgs-errors).buildDepError "lexer-applicative"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Earley" or ((hsPkgs.pkgs-errors).buildDepError "Earley"))
            (hsPkgs."lexer-applicative" or ((hsPkgs.pkgs-errors).buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or ((hsPkgs.pkgs-errors).buildDepError "language-lua2"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            ];
          buildable = if !flags.exes then false else true;
          };
        "lex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lexer-applicative" or ((hsPkgs.pkgs-errors).buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or ((hsPkgs.pkgs-errors).buildDepError "language-lua2"))
            (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
            ];
          buildable = if !flags.exes then false else true;
          };
        };
      tests = {
        "language-lua2-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."lexer-applicative" or ((hsPkgs.pkgs-errors).buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or ((hsPkgs.pkgs-errors).buildDepError "language-lua2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }