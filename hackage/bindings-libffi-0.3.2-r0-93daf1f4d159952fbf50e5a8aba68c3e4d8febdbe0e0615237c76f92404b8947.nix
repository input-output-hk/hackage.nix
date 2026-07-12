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
      identifier = { name = "bindings-libffi"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to libffi";
      description = "Low level bindings to libffi, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://sourceware.org/libffi>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libffi" or (errorHandler.pkgConfDepError "libffi"))
        ];
        buildable = true;
      };
    };
  }