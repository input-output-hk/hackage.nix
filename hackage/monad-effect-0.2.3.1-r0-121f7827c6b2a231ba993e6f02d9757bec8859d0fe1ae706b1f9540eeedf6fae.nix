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
    flags = {
      bencho0 = false;
      bencho1 = false;
      bencho2 = false;
      noinline = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "monad-effect"; version = "0.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eikochanowo@outlook.com";
      author = "Eiko";
      homepage = "";
      url = "";
      synopsis = "A fast and lightweight effect system.";
      description = "A fast and lightweight effect system.\nIt provides a way to define and handle effects and exceptions in a modular and composable way.\nMain features: moduled effects, algebraic exceptions, pure states, and good performance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
        ];
        buildable = true;
      };
      tests = {
        "monad-effect-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-effect" or (errorHandler.buildDepError "monad-effect"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "monad-effect-bench" = {
          depends = ([
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."monad-effect" or (errorHandler.buildDepError "monad-effect"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.6" && (compiler.isGhc && compiler.version.lt "9.10")) (hsPkgs."eff" or (errorHandler.buildDepError "eff"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.10") (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"));
          buildable = true;
        };
      };
    };
  }