{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hlcm"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexandre.Termier@imag.fr";
      author = "Alexandre Termier, Simon Marlow, Satnam Singh";
      homepage = "http://membres-liglab.imag.fr/termier/HLCM/hlcm.html";
      url = "";
      synopsis = "Fast algorithm for mining closed frequent itemsets";
      description = "Closed frequent itemsets are patterns that occur more\nthan a defined threshold in a transactional database.\nThis program is a Haskell implementation of the LCM2\nalgorithm by Takeaki Uno and Hiroki Arimura, which\nis the fastest algorithm for this task.\nThis implementation can make use of several threads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      exes = {
        "hlcm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring-csv" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-csv"))
            ];
          buildable = true;
          };
        "benchHLCM" = { buildable = true; };
        };
      };
    }