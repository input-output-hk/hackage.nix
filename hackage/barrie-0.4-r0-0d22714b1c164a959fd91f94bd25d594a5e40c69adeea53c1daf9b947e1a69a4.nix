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
      specVersion = "1.0";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }