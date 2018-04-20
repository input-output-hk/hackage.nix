{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-distributions";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "http://github.com/mikeizbicki/HLearn/";
        url = "";
        synopsis = "Distributions for use with the HLearn library";
        description = "This module is used to estimate statistical distributions from data.  It is based on the algebraic properties of the \"HomTrainer\" type class from the HLearn-algebra package.";
        buildType = "Simple";
      };
      components = {
        HLearn-distributions = {
          depends  = [
            hsPkgs.HLearn-algebra
            hsPkgs.HLearn-datastructures
            hsPkgs.ConstraintKinds
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.list-extras
            hsPkgs.containers
            hsPkgs.statistics
            hsPkgs.QuickCheck
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.graphviz
            hsPkgs.hmatrix
            hsPkgs.gamma
            hsPkgs.erf
            hsPkgs.array
            hsPkgs.process
            hsPkgs.MonadRandom
            hsPkgs.math-functions
            hsPkgs.normaldistribution
          ];
        };
      };
    }