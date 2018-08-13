{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cubical";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mortberg@chalmers.se";
      author = "Cyril Cohen, Thierry Coquand, Simon Huber, Anders Mörtberg";
      homepage = "https://github.com/simhu/cubical";
      url = "";
      synopsis = "Implementation of Univalence in Cubical Sets";
      description = "Cubical implements an experimental simple type\nchecker for type theory with univalence with an\nevaluator for closed terms.";
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
            (hsPkgs.filepath)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }