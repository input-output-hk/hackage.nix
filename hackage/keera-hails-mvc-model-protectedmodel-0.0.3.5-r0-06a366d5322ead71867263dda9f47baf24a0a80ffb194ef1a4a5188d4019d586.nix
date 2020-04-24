{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."MissingK" or ((hsPkgs.pkgs-errors).buildDepError "MissingK"))
          ];
        buildable = true;
        };
      };
    }