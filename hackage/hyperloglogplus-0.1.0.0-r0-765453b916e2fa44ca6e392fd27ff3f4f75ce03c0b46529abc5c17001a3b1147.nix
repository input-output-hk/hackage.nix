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
      identifier = { name = "hyperloglogplus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Eugene Zhulenev";
      maintainer = "eugene.zhulenev@gmail.com";
      author = "Eugene Zhulenev";
      homepage = "https://github.com/ezhulenev/hyperloglogplus#readme";
      url = "";
      synopsis = "Approximate cardinality estimation using constant space";
      description = "HyperLogLog++ with MinHash for efficient cardinality and intersection estimation\nusing constant space.\n\nSee original AdRoll paper for details:\n<http://tech.adroll.com/media/hllminhash.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits" or (errorHandler.buildDepError "bits"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          ];
        buildable = true;
        };
      tests = {
        "hyperloglogplus-test" = {
          depends = [
            (hsPkgs."hyperloglogplus" or (errorHandler.buildDepError "hyperloglogplus"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      };
    }