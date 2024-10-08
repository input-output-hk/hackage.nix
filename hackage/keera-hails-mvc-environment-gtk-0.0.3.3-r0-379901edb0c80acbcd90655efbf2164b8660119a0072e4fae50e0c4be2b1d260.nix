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
      identifier = {
        name = "keera-hails-mvc-environment-gtk";
        version = "0.0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Gtk-based global environment for MVC applications";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."keera-hails-mvc-model-protectedmodel" or (errorHandler.buildDepError "keera-hails-mvc-model-protectedmodel"))
          (hsPkgs."keera-hails-mvc-view" or (errorHandler.buildDepError "keera-hails-mvc-view"))
          (hsPkgs."keera-hails-mvc-view-gtk" or (errorHandler.buildDepError "keera-hails-mvc-view-gtk"))
        ];
        buildable = true;
      };
    };
  }