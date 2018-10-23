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
        name = "bindings-fann";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-fann";
      url = "";
      synopsis = "Low level bindings to FANN.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-fann" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-common)
        ];
        pkgconfig = [
          (pkgconfPkgs.fann)
        ];
      };
    };
  }