{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hinduce-classifier";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Hensing";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Interface and utilities for classifiers";
      description = "Provides an interface for classifiers and functions to use and analyze them. Take one or more hinduce-classifier-* packages for actual classifier implementations.";
      buildType = "Simple";
    };
    components = {
      "hinduce-classifier" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.layout)
          (hsPkgs.hinduce-missingh)
        ];
      };
    };
  }