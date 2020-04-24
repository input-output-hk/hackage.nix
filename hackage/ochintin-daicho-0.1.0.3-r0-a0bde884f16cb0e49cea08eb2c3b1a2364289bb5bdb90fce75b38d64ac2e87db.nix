{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ochintin-daicho"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-ochintin-daicho#readme";
      url = "";
      synopsis = "A module to manage payroll books for Japanese companies.";
      description = "A module to manage payroll books for Japanese companies. This enable to export data to tax withholding book, etc...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bookkeeping" or ((hsPkgs.pkgs-errors).buildDepError "bookkeeping"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "ochintin-daicho-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ochintin-daicho" or ((hsPkgs.pkgs-errors).buildDepError "ochintin-daicho"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."ochintin-daicho" or ((hsPkgs.pkgs-errors).buildDepError "ochintin-daicho"))
            ];
          buildable = true;
          };
        };
      };
    }