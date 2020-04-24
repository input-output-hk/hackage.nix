{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hafar"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Joosep Jääger";
      maintainer = "Joosep Jääger";
      author = "Joosep Jääger";
      homepage = "https://github.com/Soupstraw/hafar#readme";
      url = "";
      synopsis = "Affine arithmetic library for Haskell";
      description = "Hafar is an affine arithmetic library for Haskell. It is an efficient way to work with ranges of values or imprecise values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."intervals" or ((hsPkgs.pkgs-errors).buildDepError "intervals"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "hafar-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hafar" or ((hsPkgs.pkgs-errors).buildDepError "hafar"))
            (hsPkgs."intervals" or ((hsPkgs.pkgs-errors).buildDepError "intervals"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }