{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-dom-retractable"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Investment Solutions AG";
      maintainer = "Anton Gushcha <ncrashed@protonmail.com>, Vladimir Krutkin <krutkinvs@gmail.com>";
      author = "Anton Gushcha, Aminion, Vladimir Krutkin, Levon Oganyan";
      homepage = "";
      url = "";
      synopsis = "Routing and retractable back button for reflex-dom";
      description = "Library that automates widget switches and back button retract stack. See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."reflex-dom" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom"))
          ];
        buildable = true;
        };
      };
    }