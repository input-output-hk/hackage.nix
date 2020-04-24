{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bamboo-launcher"; version = "2010.2.25"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo-launcher";
      url = "";
      synopsis = "bamboo-launcher";
      description = "A standalone bamboo launcher to simplify deployment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bamboo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
            (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
            (hsPkgs."bamboo" or ((hsPkgs.pkgs-errors).buildDepError "bamboo"))
            (hsPkgs."hack-handler-hyena" or ((hsPkgs.pkgs-errors).buildDepError "hack-handler-hyena"))
            (hsPkgs."mps" or ((hsPkgs.pkgs-errors).buildDepError "mps"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."bamboo-theme-blueprint" or ((hsPkgs.pkgs-errors).buildDepError "bamboo-theme-blueprint"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }