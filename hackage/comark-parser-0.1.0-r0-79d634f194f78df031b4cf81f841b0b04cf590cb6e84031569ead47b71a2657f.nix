{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "comark-parser"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Parser for Commonmark (markdown)";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."html5-entity" or ((hsPkgs.pkgs-errors).buildDepError "html5-entity"))
          (hsPkgs."control-bool" or ((hsPkgs.pkgs-errors).buildDepError "control-bool"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."comark-parser" or ((hsPkgs.pkgs-errors).buildDepError "comark-parser"))
            (hsPkgs."comark-testutils" or ((hsPkgs.pkgs-errors).buildDepError "comark-testutils"))
            (hsPkgs."cmark" or ((hsPkgs.pkgs-errors).buildDepError "cmark"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."comark-testutils" or ((hsPkgs.pkgs-errors).buildDepError "comark-testutils"))
            (hsPkgs."comark-parser" or ((hsPkgs.pkgs-errors).buildDepError "comark-parser"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }