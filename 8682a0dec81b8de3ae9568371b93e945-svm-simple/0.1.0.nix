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
      specVersion = "1.8";
      identifier = {
        name = "svm-simple";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ville Tirronen <aleator@gmail.com>\nPaulo Tanimoto <ptanimoto@gmail.com>";
      author = "Ville Tirronen <aleator@gmail.com>";
      homepage = "http://github.com/aleator/Simple-SVM";
      url = "";
      synopsis = "Medium level, simplified, bindings to libsvm";
      description = "Simplified bindings to libsvm <http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\nThe aim of this package is to make as easy to use bindings for libsvm as\npossible. (But we are not yet there)\nChanges in version 0.0.1\n\n* Initial version\n";
      buildType = "Simple";
    };
    components = {
      "svm-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-svm)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.containers)
        ];
      };
    };
  }