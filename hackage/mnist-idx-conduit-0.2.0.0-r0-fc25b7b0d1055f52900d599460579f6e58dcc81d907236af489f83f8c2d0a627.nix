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
      specVersion = "1.10";
      identifier = { name = "mnist-idx-conduit"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/mnist-idx-conduit";
      url = "";
      synopsis = "conduit utilities for MNIST IDX files";
      description = "Conduit decoders for MNIST IDX data files, as described in http://yann.lecun.com/exdb/mnist/ . The IDX format is a low-level binary representation for storing general vector, image or tensor data. Here the parsers are specialized to the MNIST dataset, which stores scans of handwritten digits and is a classic benchmark for text classification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }