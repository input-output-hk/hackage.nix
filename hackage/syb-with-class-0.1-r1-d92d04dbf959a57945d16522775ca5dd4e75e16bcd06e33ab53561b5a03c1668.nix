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
      specVersion = "0";
      identifier = {
        name = "syb-with-class";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2004 - 2007 The University of Glasgow, CWI,\nSimon Peyton Jones, Ralf Laemmel,\nUlf Norell, Sean Seefried, Simon D. Foster,\nHAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "Simon Peyton Jones, Ralf Laemmel";
      homepage = "";
      url = "";
      synopsis = "Scrap Your Boilerplate With Class";
      description = "Classes, and Template Haskell code to generate instances, for the\nScrap Your Boilerplate With Class system.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }