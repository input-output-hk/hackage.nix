{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "spike"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "http://github.com/Tener/spike";
      url = "";
      synopsis = "Experimental web browser";
      description = "Experimental web browser based on WebKit-Gtk+";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spike" = {
          depends = [
            (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."global-variables" or ((hsPkgs.pkgs-errors).buildDepError "global-variables"))
            ];
          pkgconfig = [
            (pkgconfPkgs."libsoup-gnome-2.4" or ((hsPkgs.pkgs-errors).pkgConfDepError "libsoup-gnome-2.4"))
            ];
          buildable = true;
          };
        };
      };
    }