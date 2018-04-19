{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-classification";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "";
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
            hsPkgs.Safe
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.split
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
          ];
        };
        exes = {
          HLearn-Classification-Demo = {
            depends  = [
              hsPkgs.HLearn-algebra
              hsPkgs.ConstraintKinds
              hsPkgs.HLearn-distributions
              hsPkgs.HLearn-classification
              hsPkgs.base
              hsPkgs.criterion
            ];
          };
        };
      };
    }