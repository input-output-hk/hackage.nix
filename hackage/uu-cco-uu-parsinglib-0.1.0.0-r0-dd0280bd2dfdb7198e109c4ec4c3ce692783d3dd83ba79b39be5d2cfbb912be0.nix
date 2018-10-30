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
      specVersion = "1.6";
      identifier = {
        name = "uu-cco-uu-parsinglib";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Utrecht University";
      maintainer = "Atze Dijkstra <atze@uu.nl>";
      author = "Stefan Holdermans <stefan@holdermans.nl>";
      homepage = "https://github.com/UU-ComputerScience/uu-cco";
      url = "";
      synopsis = "Utilities for compiler construction";
      description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.uu-cco)
          (hsPkgs.ListLike)
        ];
      };
    };
  }