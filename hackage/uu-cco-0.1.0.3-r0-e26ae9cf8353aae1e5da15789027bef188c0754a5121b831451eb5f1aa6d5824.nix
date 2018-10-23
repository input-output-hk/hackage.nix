{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "uu-cco";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Utrecht University";
      maintainer = "Atze Dijkstra <atze@uu.nl>";
      author = "Stefan Holdermans <stefan@holdermans.nl>";
      homepage = "https://github.com/UU-ComputerScience/uu-cco";
      url = "";
      synopsis = "Utilities for compiler construction: core functionality";
      description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
      buildType = "Simple";
    };
    components = {
      "uu-cco" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
        ];
      };
    };
  }