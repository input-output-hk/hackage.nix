{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bricks"; version = "0.0.0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/bricks#readme";
      url = "";
      synopsis = "Bricks is a lazy functional language based on Nix.";
      description = "Bricks is a lazy functional language based on Nix.\nThis package provides parsing, rendering, and\nevaluation for the Bricks language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
          (hsPkgs."bricks-parsec" or ((hsPkgs.pkgs-errors).buildDepError "bricks-parsec"))
          (hsPkgs."bricks-rendering" or ((hsPkgs.pkgs-errors).buildDepError "bricks-rendering"))
          (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
            (hsPkgs."bricks-parsec" or ((hsPkgs.pkgs-errors).buildDepError "bricks-parsec"))
            (hsPkgs."bricks-rendering" or ((hsPkgs.pkgs-errors).buildDepError "bricks-rendering"))
            (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "evaluation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bricks" or ((hsPkgs.pkgs-errors).buildDepError "bricks"))
            (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
            (hsPkgs."bricks-internal-test" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal-test"))
            (hsPkgs."bricks-parsec" or ((hsPkgs.pkgs-errors).buildDepError "bricks-parsec"))
            (hsPkgs."bricks-rendering" or ((hsPkgs.pkgs-errors).buildDepError "bricks-rendering"))
            (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }