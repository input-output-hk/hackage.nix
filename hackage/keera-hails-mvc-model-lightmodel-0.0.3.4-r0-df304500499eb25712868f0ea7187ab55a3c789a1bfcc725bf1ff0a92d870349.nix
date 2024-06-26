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
        name = "keera-hails-mvc-model-lightmodel";
        version = "0.0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Rapid Gtk Application Development - Reactive Protected Light Models";
      description = "Light Protected Models are Thread-safe (STM) Reactive Models\nwith change propagation and notification. They are meant\nto enclose a whole (MVC) application's model, using field\naccessors to access every part of a Protected Model as a\nReactive Value. Unline full Protected Models, Light models\ndo not have an undo/redo queue.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."MissingK" or (errorHandler.buildDepError "MissingK"))
        ];
        buildable = true;
      };
    };
  }