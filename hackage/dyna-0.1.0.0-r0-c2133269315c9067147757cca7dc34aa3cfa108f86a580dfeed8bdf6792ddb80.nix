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
      specVersion = "1.12";
      identifier = { name = "dyna"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Anton Kholomiov";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/dyna-frp#readme";
      url = "";
      synopsis = "Minimal FRP library";
      description = "Defines minimal FRP library (classical FRP)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."temporal-media" or (errorHandler.buildDepError "temporal-media"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "dyna-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dyna" or (errorHandler.buildDepError "dyna"))
            ];
          buildable = true;
          };
        };
      };
    }