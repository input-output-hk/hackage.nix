{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-form"; version = "0.2.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "Html form validation using `ditto`";
      description = "Formlet library for `scotty` using `lucid` and `ditto`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."ditto" or ((hsPkgs.pkgs-errors).buildDepError "ditto"))
          (hsPkgs."ditto-lucid" or ((hsPkgs.pkgs-errors).buildDepError "ditto-lucid"))
          ];
        buildable = true;
        };
      };
    }