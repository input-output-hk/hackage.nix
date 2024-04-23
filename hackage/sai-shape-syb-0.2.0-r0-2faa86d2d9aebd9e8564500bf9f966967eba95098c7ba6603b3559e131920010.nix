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
    flags = { use_data_tree = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sai-shape-syb"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rasfar@gmail.com";
      author = "Andrew Seniuk";
      homepage = "http://www.fremissant.net/shape-syb";
      url = "";
      synopsis = "Obtain homogeneous values from arbitrary values, tramsforming or culling data";
      description = "This package provides SYB shape support: generic fmap to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.  See <http://www.fremissant.net/shape-syb>\nfor more information.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @Homo a@, parameterised by any choice type @a@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ] ++ pkgs.lib.optional (flags.use_data_tree) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."sai-shape-syb" or (errorHandler.buildDepError "sai-shape-syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }