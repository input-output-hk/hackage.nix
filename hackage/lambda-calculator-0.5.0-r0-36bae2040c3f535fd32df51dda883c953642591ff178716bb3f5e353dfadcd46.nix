{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambda-calculator"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2016 Sean Gillespie";
      maintainer = "sean@mistersg.net";
      author = "Sean D Gillespie";
      homepage = "https://github.com/sgillespie/lambda-calculus#readme";
      url = "";
      synopsis = "A lambda calculus interpreter";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "lambda-calculator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lambda-calculator" or ((hsPkgs.pkgs-errors).buildDepError "lambda-calculator"))
            (hsPkgs."Shellac" or ((hsPkgs.pkgs-errors).buildDepError "Shellac"))
            (hsPkgs."Shellac-readline" or ((hsPkgs.pkgs-errors).buildDepError "Shellac-readline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lambda-calculus-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lambda-calculator" or ((hsPkgs.pkgs-errors).buildDepError "lambda-calculator"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }