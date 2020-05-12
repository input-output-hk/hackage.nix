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
    flags = { safe-st = true; strict-modifyref = true; ghc-conc-sync = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "var"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Andy Sonnenburg";
      maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
      author = "Andy Sonnenburg";
      homepage = "http://github.com/sonyandy/var";
      url = "";
      synopsis = "Mutable variables and tuples";
      description = "This package defines the classes 'Var' and 'MTuple' of variables and tuples\nmutable within appropriate monads, as well as some instances of these classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.safe-st) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ (pkgs.lib).optional (flags.ghc-conc-sync) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ (pkgs.lib).optional (flags.strict-modifyref) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."var" or (errorHandler.buildDepError "var"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "boxed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."var" or (errorHandler.buildDepError "var"))
            ];
          buildable = true;
          };
        "unboxed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."var" or (errorHandler.buildDepError "var"))
            ];
          buildable = true;
          };
        "mean" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."var" or (errorHandler.buildDepError "var"))
            ];
          buildable = true;
          };
        "user" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."var" or (errorHandler.buildDepError "var"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }