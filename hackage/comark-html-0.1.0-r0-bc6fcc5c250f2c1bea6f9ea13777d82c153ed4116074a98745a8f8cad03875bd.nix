{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "comark-html"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark (markdown) to HTML renderer.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "comark-html-profile" = {
          depends = (pkgs.lib).optionals (flags.profile) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."comark-html" or ((hsPkgs.pkgs-errors).buildDepError "comark-html"))
            (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
            (hsPkgs."comark-testutils" or ((hsPkgs.pkgs-errors).buildDepError "comark-testutils"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."cmark" or ((hsPkgs.pkgs-errors).buildDepError "cmark"))
            ];
          buildable = if flags.profile then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comark-html" or ((hsPkgs.pkgs-errors).buildDepError "comark-html"))
            (hsPkgs."comark-testutils" or ((hsPkgs.pkgs-errors).buildDepError "comark-testutils"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "progit-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."comark-html" or ((hsPkgs.pkgs-errors).buildDepError "comark-html"))
            (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
            (hsPkgs."comark-testutils" or ((hsPkgs.pkgs-errors).buildDepError "comark-testutils"))
            (hsPkgs."cmark" or ((hsPkgs.pkgs-errors).buildDepError "cmark"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }