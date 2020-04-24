{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "identicon"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
      author = "Mark Karpov <markkarpov@openmailbox.org>";
      homepage = "https://github.com/mrkkrp/identicon";
      url = "";
      synopsis = "Flexible generation of identicons";
      description = "Flexible generation of identicons.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."identicon" or ((hsPkgs.pkgs-errors).buildDepError "identicon"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."identicon" or ((hsPkgs.pkgs-errors).buildDepError "identicon"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
            ];
          buildable = true;
          };
        };
      };
    }