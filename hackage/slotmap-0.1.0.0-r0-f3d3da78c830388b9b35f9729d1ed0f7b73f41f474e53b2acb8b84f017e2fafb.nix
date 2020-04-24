{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slotmap"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Harpo Roeder";
      maintainer = "roederharpo@protonmail.ch";
      author = "Harpo Roeder";
      homepage = "https://github.com/harporoeder/slotmap#readme";
      url = "";
      synopsis = "Pure Haskell slotmap implementation over ST or IO.";
      description = "Please see the README on GitHub at <https://github.com/harporoeder/slotmap#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "slotmap-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."slotmap" or ((hsPkgs.pkgs-errors).buildDepError "slotmap"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }