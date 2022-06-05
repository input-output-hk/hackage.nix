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
      specVersion = "2.4";
      identifier = { name = "screenshot-to-clipboard"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/screenshot-to-clipboard";
      url = "";
      synopsis = "Take screenshot and copy it to the system clipboard.";
      description = "This is a small program that shells out to imagemagick to take a screenshot,\nand then uses GTK to copy it to the system clipboard.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "screenshot-to-clipboard" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."screenshot-to-clipboard" or (errorHandler.buildDepError "screenshot-to-clipboard"))
            ];
          buildable = true;
          };
        };
      };
    }