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
      specVersion = "1.2";
      identifier = { name = "bindings-svm"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paulo Tanimoto <ptanimoto@gmail.com>\nVille Tirronen <aleator@gmail.com>";
      author = "Paulo Tanimoto <ptanimoto@gmail.com>\nVille Tirronen <aleator@gmail.com>";
      homepage = "http://github.com/tanimoto/bindings-svm";
      url = "";
      synopsis = "Low level bindings to libsvm.";
      description = "Low level bindings to libsvm <http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\n\nChanges in version 0.2.1\n\n* Exposed `svm_model` internals\n\nChanges in version 0.2.0\n\n* Updated to libsvm 3.1\n\n* Include libsvm with the package\n\n* Drop dependency on @pkg-config@\n\nChanges in version 0.1.0\n\n* Initial version\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
      };
    };
  }