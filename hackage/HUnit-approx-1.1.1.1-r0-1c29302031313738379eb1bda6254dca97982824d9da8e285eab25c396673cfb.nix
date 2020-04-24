{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HUnit-approx"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <rae@cs.brynmawr.edu>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>";
      homepage = "https://github.com/goldfirere/HUnit-approx";
      url = "";
      synopsis = "Approximate equality for floating point numbers with HUnit";
      description = "This package exports combinators useful in comparing floating-point numbers\nin HUnit tests, by using approximate equality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."call-stack" or ((hsPkgs.pkgs-errors).buildDepError "call-stack"))
          ];
        buildable = true;
        };
      tests = {
        "sanity-check" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."HUnit-approx" or ((hsPkgs.pkgs-errors).buildDepError "HUnit-approx"))
            (hsPkgs."call-stack" or ((hsPkgs.pkgs-errors).buildDepError "call-stack"))
            ];
          buildable = true;
          };
        };
      };
    }