{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bindings-gsl";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gsl";
      url = "";
      synopsis = "Low level bindings to GNU GSL.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-gsl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-common)
        ];
        pkgconfig = [
          (pkgconfPkgs.gsl)
        ];
      };
    };
  }