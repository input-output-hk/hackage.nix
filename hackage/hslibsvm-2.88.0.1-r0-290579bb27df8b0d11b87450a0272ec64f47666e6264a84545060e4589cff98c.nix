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
      identifier = { name = "hslibsvm"; version = "2.88.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."rts" or (errorHandler.buildDepError "rts"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."svm" or (errorHandler.sysDepError "svm"))
        ];
        buildable = true;
      };
    };
  }