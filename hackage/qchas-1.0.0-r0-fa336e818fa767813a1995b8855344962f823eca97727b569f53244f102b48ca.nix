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
      identifier = { name = "qchas"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Sebastian Ardelean";
      maintainer = "ardeleanasm@gmail.com";
      author = "Mihai Sebastian Ardelean";
      homepage = "https://github.com/ardeleanasm/qchas#readme";
      url = "";
      synopsis = "A library for implementing Quantum Algorithms";
      description = "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      tests = {
        "qchas-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."qchas" or (errorHandler.buildDepError "qchas"))
            ];
          buildable = true;
          };
        };
      };
    }