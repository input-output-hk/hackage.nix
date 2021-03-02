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
      identifier = { name = "bindings-gobject"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gobject";
      url = "";
      synopsis = "Low level bindings supporting GObject and derived libraries.";
      description = "This package contains bindings to GObject library using\nbindings-DSL macros and style. Like GObject, it's\nnot useful by itself, but as a foundation for other\nlibraries making use of its type system. Besides\nGObject functionality, it also provides a few macros\nfor easy mapping of code following recomended conventions.\nYou can find documentation at this package homepage:\n\n<http://bitbucket.org/mauricio/bindings-gobject>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bindings-glib" or (errorHandler.buildDepError "bindings-glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
          ];
        buildable = true;
        };
      };
    }