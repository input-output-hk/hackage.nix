{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "svm-simple";
          version = "0.2.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ville Tirronen <aleator@gmail.com>\nPaulo Tanimoto <ptanimoto@gmail.com>";
        author = "Ville Tirronen <aleator@gmail.com>";
        homepage = "http://github.com/aleator/Simple-SVM";
        url = "";
        synopsis = "Medium level, simplified, bindings to libsvm";
        description = "This is a set of simplified bindings to libsvm <http://www.csie.ntu.edu.tw/~cjlin/libsvm/> suite\nof support vector machines. This package provides tools for classification, one-class classification\nand support vector regression.\n\nChanges in version 0.2.7.1\n\n* Bumped dependencies\n\nChanges in version 0.2.7\n\n* Added more automatic training functions\n\nChanges in version 0.2.6.1\n\n* Bumped dependencies\n\nChanges in version 0.2.6\n\n* Fixed a critical bug with training and crossvalidation\n\n* Slight performance improvements\n\nChanges in version 0.2.5\n\n* Crossvalidation for the high level interface\n\nChanges in version 0.2.2\n\n* Rather ugly binary instances\n\nChanges in version 0.2.1\n\n* Added operations for saving and loading SVMs\n\nChanges in version 0.2.0\n\n* Moved the low level stuff into AI.SVM.Base\n\nChanges in version 0.1\n\n* Initial version\n";
        buildType = "Simple";
      };
      components = {
        "svm-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bindings-svm
            hsPkgs.binary
            hsPkgs.mwc-random
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.monad-par
          ];
        };
      };
    }