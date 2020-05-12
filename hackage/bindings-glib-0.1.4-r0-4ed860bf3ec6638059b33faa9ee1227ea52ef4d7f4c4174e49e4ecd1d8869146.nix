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
      specVersion = "1.4";
      identifier = { name = "bindings-glib"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to GLib.";
      description = "";
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