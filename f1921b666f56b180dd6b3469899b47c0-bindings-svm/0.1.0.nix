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
      specVersion = "1.2.3";
      identifier = {
        name = "bindings-svm";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paulo Tanimoto <ptanimoto@gmail.com>";
      author = "Paulo Tanimoto <ptanimoto@gmail.com>";
      homepage = "http://github.com/tanimoto/bindings-svm";
      url = "";
      synopsis = "Low level bindings to libsvm.";
      description = "Low level bindings to libsvm <http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\n";
      buildType = "Simple";
    };
    components = {
      "bindings-svm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs.svm) ];
        pkgconfig = [
          (pkgconfPkgs.libsvm)
        ];
      };
    };
  }