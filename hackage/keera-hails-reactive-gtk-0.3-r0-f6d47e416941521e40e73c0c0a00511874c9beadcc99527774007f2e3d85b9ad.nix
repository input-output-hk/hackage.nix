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
      identifier = { name = "keera-hails-reactive-gtk"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Reactive Fields for Gtk widgets";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."gtk-helpers" or (errorHandler.buildDepError "gtk-helpers"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
        buildable = true;
        };
      };
    }