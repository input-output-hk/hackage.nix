{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "morley-prelude"; version = "0.3.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2018 camlCase, 2019 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "A custom prelude used in Morley";
      description = "A custom prelude used in Morley. It re-exports the Universum prelude and makes some tiny changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
          (hsPkgs."universum" or ((hsPkgs.pkgs-errors).buildDepError "universum"))
          ];
        buildable = true;
        };
      };
    }