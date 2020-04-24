{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "takahashi"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "";
      url = "";
      synopsis = "library for takahashi method.";
      description = "create slide as takahashi method.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free-operational" or ((hsPkgs.pkgs-errors).buildDepError "free-operational"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reasonable-lens" or ((hsPkgs.pkgs-errors).buildDepError "reasonable-lens"))
          ];
        buildable = true;
        };
      };
    }