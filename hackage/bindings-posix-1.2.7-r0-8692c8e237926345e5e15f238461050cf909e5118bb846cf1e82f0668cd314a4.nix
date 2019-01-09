{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bindings-posix"; version = "1.2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to Posix";
      description = "Low level bindings to Posix standard library, part\nof the @bindings-*@ project. See:\n\n<https://github.com/jwiegley/bindings-dsl>\n\n<http://pubs.opengroup.org/onlinepubs/9699919799/idx/headers.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) ];
        libs = [
          (pkgs."pthread")
          ] ++ (pkgs.lib).optional (!system.isOsx) (pkgs."rt");
        };
      };
    }