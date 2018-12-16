{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bindings-gpgme";
        version = "0.1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "Maurício C. Antunes";
      homepage = "https://github.com/jwiegley/bindings-dsl";
      url = "";
      synopsis = "Project bindings-* raw interface to gpgme";
      description = "Low level bindings to gpgme, part\nof the @bindings-*@ project. See:\n\n<https://github.com/jwiegley/bindings-dsl>\n\n<http://www.gnupg.org/related_software/gpgme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."gpgme") ];
      };
    };
  }