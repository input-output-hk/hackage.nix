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
      specVersion = "0.2";
      identifier = { name = "barrie"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Fraser Wilson";
      maintainer = "Fraser Wilson <blancolioni@gmail.com>";
      author = "Fraser Wilson";
      homepage = "http://thewhitelion.org/haskell/barrie";
      url = "";
      synopsis = "Declarative Gtk GUI library";
      description = "Implementation of an idea for supporting certain kinds of GUI:\nthat is state based, user-driven ones.  The GUI is intended to\nmanipulate a state, and it is responsive rather than active.";
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