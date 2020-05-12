{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
            (hsPkgs."bindings-glib" or (errorHandler.buildDepError "bindings-glib"))
            (hsPkgs."bindings-gobject" or (errorHandler.buildDepError "bindings-gobject"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gdk-2.0" or (errorHandler.pkgConfDepError "gdk-2.0"))
            (pkgconfPkgs."gtk+-2.0" or (errorHandler.pkgConfDepError "gtk+-2.0"))
            (pkgconfPkgs."pango" or (errorHandler.pkgConfDepError "pango"))
            ];
          buildable = true;
          };
        };
      };
    }