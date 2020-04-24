{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hydrogen-data"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julfleischer@paypal.com";
      author = "Julian Fleischer";
      homepage = "https://github.com/scravy/hydrogen-data";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hydrogen-prelude" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-prelude"))
          (hsPkgs."hydrogen-syntax" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-syntax"))
          (hsPkgs."hydrogen-util" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-util"))
          (hsPkgs."nicify" or ((hsPkgs.pkgs-errors).buildDepError "nicify"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }