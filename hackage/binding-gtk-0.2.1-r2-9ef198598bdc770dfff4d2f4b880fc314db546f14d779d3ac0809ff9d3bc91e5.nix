{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "binding-gtk"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://github.com/accursoft/binding";
      url = "";
      synopsis = "Data Binding in Gtk2Hs";
      description = "Bind mutable data and lists to Gtk2Hs widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or ((hsPkgs.pkgs-errors).buildDepError "binding-gtk"))
            ];
          buildable = true;
          };
        "lists" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or ((hsPkgs.pkgs-errors).buildDepError "binding-gtk"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }