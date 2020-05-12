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
      specVersion = "1.8";
      identifier = { name = "svm-simple"; version = "0.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-svm" or (errorHandler.buildDepError "bindings-svm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }