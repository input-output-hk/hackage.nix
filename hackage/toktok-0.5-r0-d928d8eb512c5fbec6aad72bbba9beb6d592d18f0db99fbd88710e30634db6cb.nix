{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { benchmark = false; test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "toktok"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Grégoire Détrez <gdetrez@crans.org>";
      author = "Grégoire Détrez <gdetrez@crans.org>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "An ambiguous tokenizer for GF";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      exes = {
        "toktok-benchmark" = {
          depends = [
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."progression" or ((hsPkgs.pkgs-errors).buildDepError "progression"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if !flags.benchmark then false else true;
          };
        "toktok-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = if !flags.test then false else true;
          };
        "toktok" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."gf" or ((hsPkgs.pkgs-errors).buildDepError "gf"))
            (hsPkgs."iconv" or ((hsPkgs.pkgs-errors).buildDepError "iconv"))
            ];
          buildable = true;
          };
        "gf-extract-lexicon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }