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
        name = "bindings-common";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings";
      url = "";
      synopsis = "Low-level library bindings, base package.";
      description = "Facilities to wrap foreign C libraries. Used as basis in\n@bindings-*@ packages.";
      buildType = "Simple";
    };
    components = {
      "bindings-common" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }