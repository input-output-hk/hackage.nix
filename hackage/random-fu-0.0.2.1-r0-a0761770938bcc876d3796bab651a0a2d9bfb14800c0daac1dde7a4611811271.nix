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
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "random-fu"; version = "0.0.2.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on orthogonal typeclasses\nfor entropy sources and random variable distributions, all\nserved up on a monadic platter.  Aspires to be useful\nin an idiomatic way in both \\\"pure\\\" and \\\"impure\\\" styles,\nas well as reasonably fast.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."stateref" or (errorHandler.buildDepError "stateref"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }