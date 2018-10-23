{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-mvc-model-protectedmodel";
        version = "0.0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Rapid Gtk Application Development - Protected Reactive Models";
      description = "Protected Models are Thread-safe (STM) Reactive Models\nwith change propagation and notification. They are meant\nto enclose a whole (MVC) application's model, using field\naccessors to access every part of a Protected Model as a\nReactive Value.";
      buildType = "Simple";
    };
    components = {
      "keera-hails-mvc-model-protectedmodel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.keera-hails-reactivevalues)
          (hsPkgs.MissingK)
        ];
      };
    };
  }