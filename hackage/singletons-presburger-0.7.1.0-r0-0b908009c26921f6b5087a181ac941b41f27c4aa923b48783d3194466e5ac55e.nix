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
    flags = { examples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "singletons-presburger"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Presburger Arithmetic Solver for GHC Type-level natural numbers with Singletons package.";
      description = "The @singletons-presburger@ plugin augments GHC type-system with Presburger\nArithmetic Solver for Type-level natural numbers, with integration with <https://hackage.haskell.org/package/singletons singletons> package.\n\nYou can use by adding this package to @dependencies@ and add the following pragma\nto the head of .hs files:\n\n> OPTIONS_GHC -fplugin Data.Singletons.TypeNats.Presburger";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-typelits-presburger" or (errorHandler.buildDepError "ghc-typelits-presburger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
        ] ++ (if compiler.isGhc && compiler.version.ge "9"
          then [
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          ]
          else [
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ]);
        buildable = true;
      };
      exes = {
        "simple-arith" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."singletons-presburger" or (errorHandler.buildDepError "singletons-presburger"))
          ] ++ (if compiler.isGhc && compiler.version.ge "9"
            then [
              (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
              (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
            ]
            else [
              (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ])) ++ (if compiler.isGhc && compiler.version.ge "9"
            then [
              (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
              (hsPkgs."singletons-th" or (errorHandler.buildDepError "singletons-th"))
            ]
            else [
              (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ]);
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }