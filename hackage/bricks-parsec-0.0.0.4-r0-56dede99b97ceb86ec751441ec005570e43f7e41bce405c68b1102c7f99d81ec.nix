{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bricks-parsec"; version = "0.0.0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/bricks#readme";
      url = "";
      synopsis = "...";
      description = "...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
          (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "cases" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
            (hsPkgs."bricks-internal-test" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal-test"))
            (hsPkgs."bricks-parsec" or ((hsPkgs.pkgs-errors).buildDepError "bricks-parsec"))
            (hsPkgs."bricks-rendering" or ((hsPkgs.pkgs-errors).buildDepError "bricks-rendering"))
            (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bricks-internal" or ((hsPkgs.pkgs-errors).buildDepError "bricks-internal"))
            (hsPkgs."bricks-syntax" or ((hsPkgs.pkgs-errors).buildDepError "bricks-syntax"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }