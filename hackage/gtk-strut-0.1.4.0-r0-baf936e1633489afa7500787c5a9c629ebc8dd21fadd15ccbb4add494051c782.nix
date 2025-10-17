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
      specVersion = "1.12";
      identifier = { name = "gtk-strut"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/gtk-strut#readme";
      url = "";
      synopsis = "Library for creating strut windows with gi-gtk";
      description = "Please see the README on Github at <https://github.com/IvanMalison/gtk-strut#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }