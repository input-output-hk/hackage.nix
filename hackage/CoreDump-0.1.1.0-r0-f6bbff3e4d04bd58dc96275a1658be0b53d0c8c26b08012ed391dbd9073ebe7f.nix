{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "CoreDump";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A GHC plugin for printing GHC's internal Core data structures.";
      description = "See README file.";
      buildType = "Simple";
    };
    components = {
      "CoreDump" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.pretty)
          (hsPkgs.pretty-show)
        ];
      };
    };
  }