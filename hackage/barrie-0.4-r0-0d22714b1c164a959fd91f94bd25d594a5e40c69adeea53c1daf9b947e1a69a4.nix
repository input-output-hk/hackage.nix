{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0.2";
      identifier = { name = "barrie"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Fraser Wilson";
      maintainer = "blancolioni@gmail.com";
      author = "Fraser Wilson";
      homepage = "";
      url = "";
      synopsis = "Pure Gtk GUI library";
      description = "Implementation of an idea for supporting certain kinds of GUI:\nthat is state based, user-driven ones.  The GUI is intended to\nmanipulate a state, and it is responsive rather than active.\nConfiguration is an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }