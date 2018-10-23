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
        name = "bindings-gsl";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to GNU GSL.";
      description = "Low level bindings to GNU GSL, part\nof the @bindings-*@ project. See:\n\n<http://bitbucket.org/mauricio/bindings-dsl>\n\n<http://www.gnu.org/software/gsl>";
      buildType = "Simple";
    };
    components = {
      "bindings-gsl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        pkgconfig = [
          (pkgconfPkgs.gsl)
        ];
      };
    };
  }