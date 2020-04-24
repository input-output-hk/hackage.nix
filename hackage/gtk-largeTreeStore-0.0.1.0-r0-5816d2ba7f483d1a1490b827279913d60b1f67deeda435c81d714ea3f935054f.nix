{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gtk-largeTreeStore"; version = "0.0.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) Sarunas Valaskevicius";
      maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
      author = "Sarunas Valaskevicius";
      homepage = "";
      url = "";
      synopsis = "Large TreeStore support for gtk2hs";
      description = "Uses nested set model to store tree iterators and achieves larger data support than the\noriginal gtk2hs implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."nested-sets" or ((hsPkgs.pkgs-errors).buildDepError "nested-sets"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk-largeTreeStore" or ((hsPkgs.pkgs-errors).buildDepError "gtk-largeTreeStore"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            ];
          buildable = true;
          };
        };
      };
    }