{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bitspeak"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bitspeak";
      url = "";
      synopsis = "Writing helper for those with Stephen Hawking like impairment.";
      description = "This is a proof-of-concept application for exercising writing\nusing binary choices, i.e., selecting from two sets of\nconsecutive letters. This is tiresome, but for those suffering\nfrom motor neuron diseases (specially one like amyotrophic\nlateral sclerosis, where cognitive functions remain intact) even\nthis small program can already be used to comunicate with the\nhelp of an assistant.";
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