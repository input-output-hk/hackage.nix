{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lgtk"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://people.inf.elte.hu/divip/LGtk/index.html";
      url = "";
      synopsis = "lens-based API for Gtk";
      description = "The main interface module of LGtk is \"GUI.MLens.Gtk\".\n\nSee also <http://people.inf.elte.hu/divip/LGtk/index.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."control-monad-free" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-free"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        buildable = true;
        };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."lgtk" or ((hsPkgs.pkgs-errors).buildDepError "lgtk"))
            ];
          buildable = true;
          };
        };
      };
    }