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
      specVersion = "1.2";
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