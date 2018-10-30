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
      specVersion = "1.10";
      identifier = {
        name = "cubical";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mortberg@chalmers.se";
      author = "Cyril Cohen, Thierry Coquand, Simon Huber, Anders Mörtberg";
      homepage = "https://github.com/simhu/cubical";
      url = "";
      synopsis = "Implementation of Univalence in Cubical Sets";
      description = "Cubical implements an experimental simple type checker\nfor type theory with univalence with an evaluator for closed terms.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cubical" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.haskeline)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.BNFC)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }