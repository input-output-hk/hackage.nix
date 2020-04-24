{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "DysFRP-Craftwerk"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marek Materzok";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/DysFRP";
      url = "";
      synopsis = "dysFunctional Reactive Programming on Craftwerk";
      description = "Simple Craftwerk bindings for DysFRP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."craftwerk" or ((hsPkgs.pkgs-errors).buildDepError "craftwerk"))
          (hsPkgs."craftwerk-gtk" or ((hsPkgs.pkgs-errors).buildDepError "craftwerk-gtk"))
          (hsPkgs."DysFRP" or ((hsPkgs.pkgs-errors).buildDepError "DysFRP"))
          (hsPkgs."DysFRP-Cairo" or ((hsPkgs.pkgs-errors).buildDepError "DysFRP-Cairo"))
          ];
        buildable = true;
        };
      };
    }