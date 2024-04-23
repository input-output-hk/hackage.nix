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
      specVersion = "1.10";
      identifier = { name = "hob"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Sarunas Valaskevicius";
      maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
      author = "Sarunas Valaskevicius";
      homepage = "http://svalaskevicius.github.io/hob/";
      url = "";
      synopsis = "A source code editor aiming for the convenience of use";
      description = "A simple command based code editor being developed for the mouse-free workflow.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."gtk-largeTreeStore" or (errorHandler.buildDepError "gtk-largeTreeStore"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "hob" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hob" or (errorHandler.buildDepError "hob"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."hob" or (errorHandler.buildDepError "hob"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
          ];
          buildable = true;
        };
      };
    };
  }