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
        name = "extensible";
        version = "0.4.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/extensible";
      url = "";
      synopsis = "Extensible, efficient, optics-friendly data types and effects";
      description = "Poly-kinded extensible records, variants, effects, tangles";
      buildType = "Simple";
    };
    components = {
      "extensible" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.constraints)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.monad-skeleton)
          (hsPkgs.StateVar)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "effects" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extensible)
          ];
        };
        "bits" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extensible)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }