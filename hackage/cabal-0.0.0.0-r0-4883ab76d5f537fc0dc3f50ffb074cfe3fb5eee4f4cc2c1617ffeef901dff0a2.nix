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
        name = "cabal";
        version = "0.0.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter.schonwald@gmail.com";
      author = "Carter Tazio Schonwald";
      homepage = "";
      url = "";
      synopsis = "placeholder for Cabal package, you want the upper case Cabal";
      description = "";
      buildType = "Simple";
    };
    components = {
      "cabal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.youProbablyWantCapitalCabal)
        ];
      };
    };
  }