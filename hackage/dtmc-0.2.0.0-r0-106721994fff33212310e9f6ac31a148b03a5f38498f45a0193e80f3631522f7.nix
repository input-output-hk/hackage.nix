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
      identifier = { name = "dtmc"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Arkadii Kholmetskii";
      maintainer = "Arkadii Kholmetskii <373321aa@gmail.com>";
      author = "Arkadii Kholmetskii";
      homepage = "https://github.com/kholmetskii/dtmc";
      url = "";
      synopsis = "Type-safe discrete-time Markov chains";
      description = "Type-safe finite discrete-time Markov chains with matrix and kernel\nrepresentations, plus locally finite countable-state kernels for exact\nfinite-horizon analysis and simulation.\nThe package provides validated probability laws, finite-time joint and\nconditional probabilities, hitting and return quantities, visit counts,\ncommunicating-class analysis, canonical decomposition, absorption,\nstationary distributions, and ordinary and cyclic limiting behaviour.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dtmc" or (errorHandler.buildDepError "dtmc"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }