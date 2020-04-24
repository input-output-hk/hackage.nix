{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ipopt-hs"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ipopt" or ((hsPkgs.pkgs-errors).pkgConfDepError "ipopt"))
          ];
        buildable = true;
        };
      exes = {
        "ipopt-hs_Test1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ipopt-hs" or ((hsPkgs.pkgs-errors).buildDepError "ipopt-hs"))
            ];
          buildable = true;
          };
        "ipopt-hs_Test2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ipopt-hs" or ((hsPkgs.pkgs-errors).buildDepError "ipopt-hs"))
            ];
          buildable = true;
          };
        };
      };
    }