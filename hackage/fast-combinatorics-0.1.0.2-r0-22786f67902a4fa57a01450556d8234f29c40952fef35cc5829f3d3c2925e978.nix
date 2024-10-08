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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "fast-combinatorics"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com//fast-combinatorics#readme";
      url = "";
      synopsis = "Fast combinatorics.";
      description = "Fast combinatorics code with a high level of safety guaranteed by writing it in ATS.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "fast-combinatorics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-combinatorics" or (errorHandler.buildDepError "fast-combinatorics"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."combinatorics" or (errorHandler.buildDepError "combinatorics"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "fast-combinatorics-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-combinatorics" or (errorHandler.buildDepError "fast-combinatorics"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."combinatorics" or (errorHandler.buildDepError "combinatorics"))
          ];
          buildable = true;
        };
      };
    };
  }