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
        name = "reflex-orphans";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 davean";
      maintainer = "davean <davean@xkcd.com>";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "Useful missing instances for Reflex";
      description = "This package provides additional instances missing from <https://hackage.haskell.org/package/reflex reflex>, specificly 'Functor' and 'Applicative' for 'Dynamic'. The inclusion of these instances facilitates easier, conventional Haskell style programming in reflex.";
      buildType = "Simple";
    };
    components = {
      "reflex-orphans" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reflex)
          (hsPkgs.these)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.reflex)
            (hsPkgs.reflex-orphans)
            (hsPkgs.dependent-map)
            (hsPkgs.ref-tf)
            (hsPkgs.mtl)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }