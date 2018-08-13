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
      specVersion = "1.6.0.1";
      identifier = {
        name = "hslibsvm";
        version = "2.88.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephan Günther <gnn.github@gmail.com>";
      author = "Stephan Günther";
      homepage = "";
      url = "";
      synopsis = "A FFI binding to libsvm.";
      description = "This is a FFI binding to LibSVM. It corresponds to LibSVM version 2.88.\nFurther information on LibSVM can be found on its website:\n<http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\nSee the README for details.";
      buildType = "Simple";
    };
    components = {
      "hslibsvm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.rts)
        ];
        libs = [
          (pkgs.stdc++)
          (pkgs.svm)
        ];
      };
    };
  }