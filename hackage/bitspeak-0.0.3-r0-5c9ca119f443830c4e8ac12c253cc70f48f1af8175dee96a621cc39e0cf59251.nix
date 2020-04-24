{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bitspeak"; version = "0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Proof-of-concept tool for writing using binary choices.";
      description = "This was an application for exercising writing\nusing binary choices, i.e., selecting from two sets of\nconsecutive letters.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bitspeak" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
            (hsPkgs."bindings-glib" or ((hsPkgs.pkgs-errors).buildDepError "bindings-glib"))
            (hsPkgs."bindings-gobject" or ((hsPkgs.pkgs-errors).buildDepError "bindings-gobject"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gdk-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-2.0"))
            (pkgconfPkgs."gtk+-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-2.0"))
            (pkgconfPkgs."pango" or ((hsPkgs.pkgs-errors).pkgConfDepError "pango"))
            ];
          buildable = true;
          };
        };
      };
    }