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
      identifier = { name = "bindings-glib"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to GLib";
      description = "Low level bindings to GLib, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<https://developer.gnome.org/glib>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."gthread-2.0" or (errorHandler.pkgConfDepError "gthread-2.0"))
        ];
        buildable = true;
      };
    };
  }