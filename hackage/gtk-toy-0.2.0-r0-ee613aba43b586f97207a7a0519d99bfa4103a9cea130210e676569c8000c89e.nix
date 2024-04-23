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
      specVersion = "1.6";
      identifier = { name = "gtk-toy"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Sloan <mgsloan@gmail.com>";
      author = "Michael Sloan";
      homepage = "";
      url = "";
      synopsis = "Convenient Gtk canvas with mouse and keyboard input.";
      description = "The Gtk Toy Framework is a simplifying interface over Gtk for creating\napplications which draw things and interact with the mouse and keyboard.  It\nhandles the minutae of setting up the Gtk window and canvas, and processes\nthe input events into more palatable data structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
        ];
        buildable = true;
      };
    };
  }