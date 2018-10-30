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
        name = "graph-rewriting-layout";
        version = "0.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Force-directed node placement intended for incremental graph drawing";
      description = "Defines basic methods for force-directed node displacement that can be combined into an incremental graph-drawing procedure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.graph-rewriting)
          (hsPkgs.AC-Vector)
        ];
      };
    };
  }