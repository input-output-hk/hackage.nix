{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hydrogen-syntax"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julfleischer@paypal.com";
      author = "Julian Fleischer";
      homepage = "https://github.com/scravy/hydrogen-syntax";
      url = "";
      synopsis = "Hydrogen Syntax";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hydrogen-prelude" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-prelude"))
          (hsPkgs."hydrogen-util" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-util"))
          (hsPkgs."nicify" or ((hsPkgs.pkgs-errors).buildDepError "nicify"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }