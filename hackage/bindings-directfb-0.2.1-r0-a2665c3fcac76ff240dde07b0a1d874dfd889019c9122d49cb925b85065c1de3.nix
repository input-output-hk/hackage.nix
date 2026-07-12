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
      identifier = { name = "bindings-directfb"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "https://github.com/rethab/bindings-dsl";
      url = "";
      synopsis = "Project bindings-* raw interface to DirectFB";
      description = "Low level bindings to DirectFB, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://directfb.org>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
        ];
        pkgconfig = [
          (pkgconfPkgs."directfb" or (errorHandler.pkgConfDepError "directfb"))
        ];
        buildable = true;
      };
    };
  }