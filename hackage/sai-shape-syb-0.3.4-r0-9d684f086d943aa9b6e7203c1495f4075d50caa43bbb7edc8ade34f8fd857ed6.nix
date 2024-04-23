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
      identifier = { name = "sai-shape-syb"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/shape-syb";
      url = "";
      synopsis = "Obtain homogeneous values from arbitrary values, transforming or culling data";
      description = "This package provides SYB shape support: generic mapping to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @<http://hackage.haskell.org/package/sai-shape-syb-0.3.4/docs/SAI-Data-Generics-Shape-SYB.html#t:Homo Homo> <# a>@, parameterised by any choice type @<# a>@.\n\nSee the project\n<http://www.fremissant.net/shape-syb homepage> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
        ] ++ pkgs.lib.optional (flags.use_data_tree) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sai-shape-syb" or (errorHandler.buildDepError "sai-shape-syb"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }