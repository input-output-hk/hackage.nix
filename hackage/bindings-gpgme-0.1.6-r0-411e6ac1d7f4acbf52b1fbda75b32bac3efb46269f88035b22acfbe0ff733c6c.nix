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
      specVersion = "1.8";
      identifier = { name = "bindings-gpgme"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gpgme";
      url = "";
      synopsis = "Project bindings-* raw interface to gpgme";
      description = "Low level bindings to gpgme, part\nof the @bindings-*@ project. See:\n\n<http://bitbucket.org/mauricio/bindings-dsl>\n\n<http://www.gnupg.org/related_software/gpgme>";
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