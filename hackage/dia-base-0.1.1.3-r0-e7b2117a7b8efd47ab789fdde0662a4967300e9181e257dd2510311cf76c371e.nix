{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dia-base";
        version = "0.1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "An EDSL for teaching Haskell with diagrams - data types";
      description = "This package contains the Diagram data type\nand the user API to construct diagrams.\n\nSee also the dia-functions package.\n\nFor exaples see <http://pnyf.inf.elte.hu/fp/Diagrams_en.xml>\n\nChanges since 0.1: more documentation";
      buildType = "Simple";
    };
    components = {
      "dia-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
    };
  }