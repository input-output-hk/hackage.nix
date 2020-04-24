{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gtk-helpers"; version = "0.0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://keera.es/blog/community";
      url = "";
      synopsis = "A collection of auxiliary operations and widgets related to Gtk+";
      description = "A collection of auxiliary operations and widgets related to Gtk+.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."gio" or ((hsPkgs.pkgs-errors).buildDepError "gio"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }