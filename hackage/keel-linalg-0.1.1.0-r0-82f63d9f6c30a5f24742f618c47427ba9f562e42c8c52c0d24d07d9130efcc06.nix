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
      specVersion = "3.0";
      identifier = { name = "keel-linalg"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zhe Zhang";
      author = "Zhe Zhang";
      homepage = "https://github.com/skymanbp/keel";
      url = "";
      synopsis = "CBLAS/LAPACKE over a runtime-loaded OpenBLAS";
      description = "Dense linear algebra for Haskell with zero build-time native\ndependencies: CBLAS level-3 and LAPACKE drivers resolved at run time\nfrom an OpenBLAS shared library through keel-dyn, over Storable\nvectors.\n.\nThe backend is located by the documented keel search policy\n(@KEEL_OPENBLAS@ env override, then the per-user keel data dir, then\nthe system search path), probed for ILP64 misconfiguration via\n@openblas_get_config@, and pinned immutably in a 'Backend' handle —\nthere is no global state and no backend swapping under a pure API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "keel-linalg-smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
            (hsPkgs."keel-linalg" or (errorHandler.buildDepError "keel-linalg"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "keel-linalg-oracle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-linalg" or (errorHandler.buildDepError "keel-linalg"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }