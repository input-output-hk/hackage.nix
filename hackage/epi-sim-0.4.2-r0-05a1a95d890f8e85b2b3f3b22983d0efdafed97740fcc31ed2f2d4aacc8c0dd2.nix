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
      specVersion = "1.22";
      identifier = { name = "epi-sim"; version = "0.4.2"; };
      license = "MIT";
      copyright = "2020 Alexander Zarebski";
      maintainer = "aezarebski@gmail.com";
      author = "Alexander Zarebski";
      homepage = "https://github.com/aezarebski/epi-sim#readme";
      url = "";
      synopsis = "A library for simulating epidemics as birth-death processes.";
      description = "A library for simulating epidemics, with a focus on phylodynamics and\nobservation models.\n\nAlthough this package supports the definition of new models there are some that\nare implemented already in the `Epidemic.Model` module. Implemented models\ninclude:\n\n1. Birth-Death-Sampling-Catastrophe-Occurrence-Disaster (see `Epidemic.Model.BDSCOD`)\n2. Inhomogeneous Birth-Death-Sampling (see `Epidemic.Model.InhomogeneousBDS`)\n3. Logistic Birth-Death-Sampling-Disaster (see `Epidemic.Model.LogisticBDSD`)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "epi-sim-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."epi-sim" or (errorHandler.buildDepError "epi-sim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }