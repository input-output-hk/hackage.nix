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
        name = "Strafunski-ATermLib";
        version = "1.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darmanithird@gmail.com";
      author = "Ralf Laemmel, Joost Visser";
      homepage = "";
      url = "";
      synopsis = "An abstract data type designed for the exchange of tree-like data structures";
      description = "Library for dealing with ATerms (annotated terms) in Haskell. See https://github.com/cwi-swat/aterms for more information on ATerms.";
      buildType = "Simple";
    };
    components = {
      "Strafunski-ATermLib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }