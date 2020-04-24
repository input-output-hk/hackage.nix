{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hmep"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Bogdan Penkovsky";
      maintainer = "dev at penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/hmep#readme";
      url = "";
      synopsis = "HMEP Multi Expression Programming –\na genetic programming variant";
      description = "A multi expression programming implementation with\nfocus on speed.\n\nhttps://en.wikipedia.org/wiki/Multi_expression_programming";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hmep-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hmep" or ((hsPkgs.pkgs-errors).buildDepError "hmep"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hmep-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hmep" or ((hsPkgs.pkgs-errors).buildDepError "hmep"))
            ];
          buildable = true;
          };
        };
      };
    }