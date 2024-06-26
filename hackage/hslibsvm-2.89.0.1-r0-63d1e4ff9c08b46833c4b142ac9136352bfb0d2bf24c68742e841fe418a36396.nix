{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hslibsvm"; version = "2.89.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephan Günther <gnn dot github at gmail dot com>";
      author = "Stephan Günther";
      homepage = "";
      url = "";
      synopsis = "A FFI binding to libsvm.";
      description = "This is a FFI binding to LibSVM. It corresponds to LibSVM version 2.89 but\nshould also support LibSVM 2.88.\nFurther information on LibSVM can be found on its website:\n<http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\nSee the README for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."svm" or (errorHandler.sysDepError "svm"))
        ];
        buildable = true;
      };
    };
  }