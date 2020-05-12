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
      identifier = { name = "keera-hails-i18n"; version = "0.0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Rapid Gtk Application Development - I18N";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."MissingK" or (errorHandler.buildDepError "MissingK"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ];
        buildable = true;
        };
      };
    }