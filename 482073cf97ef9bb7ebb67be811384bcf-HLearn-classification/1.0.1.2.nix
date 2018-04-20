{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-classification";
          version = "1.0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "http://github.com/mikeizbicki/HLearn/";
        url = "";
        synopsis = "";
        description = "This module is for unsupervised, supervised, and semi-supervised classification tasks.  It is in desperate need of documentation and refactoring.";
        buildType = "Simple";
      };
      components = {
        HLearn-classification = {
          depends  = [
            hsPkgs.base
            hsPkgs.HLearn-algebra
            hsPkgs.HLearn-distributions
            hsPkgs.ConstraintKinds
            hsPkgs.dlist
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.list-extras
            hsPkgs.containers
            hsPkgs.statistics
            hsPkgs.QuickCheck
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.MonadRandom
            hsPkgs.logfloat
            hsPkgs.math-functions
            hsPkgs.normaldistribution
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.binary
          ];
        };
      };
    }