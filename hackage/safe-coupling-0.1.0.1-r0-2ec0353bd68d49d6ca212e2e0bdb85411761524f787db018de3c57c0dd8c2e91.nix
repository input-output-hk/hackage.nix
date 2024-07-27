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
      identifier = { name = "safe-coupling"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020-21 Lisa Vasilenko & Niki Vazou, IMDEA Software Institute";
      maintainer = "Lisa Vasilenko <vasilliza@gmail.com>";
      author = "Lisa Vasilenko, Niki Vazou";
      homepage = "https://github.com/nikivazou/safe-coupling";
      url = "";
      synopsis = "Relational proof system for probabilistic algorithms ";
      description = "Relational proof system for probabilistic algorithms. Supports two proving methods: upper bound Kantorovich distance between two distributions and establish a boolean relation on samples from two distributions (the latter is stronger).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          (hsPkgs."liquid-containers" or (errorHandler.buildDepError "liquid-containers"))
          (hsPkgs."liquid-prelude" or (errorHandler.buildDepError "liquid-prelude"))
          (hsPkgs."probability" or (errorHandler.buildDepError "probability"))
          (hsPkgs."rest-rewrite" or (errorHandler.buildDepError "rest-rewrite"))
        ];
        buildable = true;
      };
      tests = {
        "safe-coupling-test" = {
          depends = [
            (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
            (hsPkgs."safe-coupling" or (errorHandler.buildDepError "safe-coupling"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."probability" or (errorHandler.buildDepError "probability"))
            (hsPkgs."sort" or (errorHandler.buildDepError "sort"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }