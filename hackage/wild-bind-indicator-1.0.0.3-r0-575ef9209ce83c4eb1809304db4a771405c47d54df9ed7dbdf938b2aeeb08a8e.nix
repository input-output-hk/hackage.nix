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
      specVersion = "2.0";
      identifier = { name = "wild-bind-indicator"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/wild-bind";
      url = "";
      synopsis = "Graphical indicator for WildBind";
      description = "Graphical indicator for WildBind. See <https://github.com/debug-ito/wild-bind>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wild-bind" or (errorHandler.buildDepError "wild-bind"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }