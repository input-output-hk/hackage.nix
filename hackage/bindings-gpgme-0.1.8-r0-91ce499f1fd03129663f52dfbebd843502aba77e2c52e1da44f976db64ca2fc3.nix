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
      identifier = { name = "bindings-gpgme"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "https://github.com/rethab/bindings-dsl";
      url = "";
      synopsis = "Project bindings-* raw interface to gpgme";
      description = "Low level bindings to gpgme, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://www.gnupg.org/related_software/gpgme>\n\nFor a higher-level library, see:\n<https://github.com/rethab/h-gpgme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = [ (pkgs."gpgme" or (errorHandler.sysDepError "gpgme")) ];
        buildable = true;
      };
    };
  }