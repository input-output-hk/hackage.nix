{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "hinduce-classifier-decisiontree";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Hensing";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Decision Tree Classifiers for hInduce";
      description = "A very simple decision tree construction algorithm; an implementation of @hinduce-classifier@'s @Classifier@ class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.layout)
          (hsPkgs.hinduce-missingh)
          (hsPkgs.hinduce-classifier)
          (hsPkgs.convertible)
        ];
      };
    };
  }