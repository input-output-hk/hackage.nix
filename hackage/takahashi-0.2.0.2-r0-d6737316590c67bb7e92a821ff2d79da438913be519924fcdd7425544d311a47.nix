{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "takahashi"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "";
      url = "";
      synopsis = "Operational Monad implementation. It is more small but adequately.";
      description = "Just size Operational Monad implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."reasonable-operational" or ((hsPkgs.pkgs-errors).buildDepError "reasonable-operational"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reasonable-lens" or ((hsPkgs.pkgs-errors).buildDepError "reasonable-lens"))
          ];
        buildable = true;
        };
      };
    }