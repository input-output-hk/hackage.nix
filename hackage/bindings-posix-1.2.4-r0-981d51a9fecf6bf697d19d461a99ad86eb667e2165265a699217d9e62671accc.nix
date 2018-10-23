{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bindings-posix";
        version = "1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to posix.";
      description = "Low level bindings to Posix standard library, part\nof the @bindings-*@. See:\n\n<http://bitbucket.org/mauricio/bindings-DSL";
      buildType = "Simple";
    };
    components = {
      "bindings-posix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."pthread") ];
      };
    };
  }