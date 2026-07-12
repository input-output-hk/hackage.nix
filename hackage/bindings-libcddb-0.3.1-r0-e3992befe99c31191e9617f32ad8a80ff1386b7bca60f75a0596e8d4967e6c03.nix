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
      identifier = { name = "bindings-libcddb"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "https://github.com/rethab/bindings-dsl";
      url = "";
      synopsis = "Project bindings-* raw interface to libcddb";
      description = "Low level bindings to libcddb, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://libcddb.sourceforge.net>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libcddb" or (errorHandler.pkgConfDepError "libcddb"))
        ];
        buildable = true;
      };
    };
  }