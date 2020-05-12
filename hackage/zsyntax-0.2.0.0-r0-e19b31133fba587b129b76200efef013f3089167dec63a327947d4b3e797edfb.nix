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
      specVersion = "2";
      identifier = { name = "zsyntax"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Filippo Sestini";
      maintainer = "sestini.filippo@gmail.com";
      author = "Filippo Sestini";
      homepage = "https://github.com/fsestini/zsyntax#readme                 ";
      url = "";
      synopsis = "Automated theorem prover for the Zsyntax biochemical calculus";
      description = "An automated theorem prover for Zsyntax, a\nlogical calculus for molecular biology inspired by linear logic,\nthat can be used to automatically verify biological\npathways expressed as logical sequents.\nThe prover implements automatic proof search for the\nZsyntax sequent calculus (ZBS), a logical calculus for\na context-sensitive fragment of multiplicative linear\nlogic where sequents are decorated so to account for\nthe biochemical constraints.\nThe theory behind the Zsyntax sequent calculus and its\nproof search procedure is developed in F. Sestini,\nS. Crafa, Proof-search in a context-sensitive logic\nfor molecular biology, Journal of Logic and\nComputation, 2018\n(<https://doi.org/10.1093/logcom/exy028>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "zsyntax-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zsyntax" or (errorHandler.buildDepError "zsyntax"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }