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
      identifier = { name = "haquil"; version = "0.1.7.5"; };
      license = "MIT";
      copyright = "(c) 2017-18 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/haquil";
      url = "https://bitbucket.org/functionally/quil/downloads/haquil-0.1.7.5.tar.gz";
      synopsis = "A Haskell implementation of the Quil instruction set for quantum computing.";
      description = "This Haskell library implements the Quil language for quantum computing, as specified in \"A Practical Quantum Instruction Set Architecture\" \\<https:\\/\\/arxiv.org\\/abs\\/1608.03355\\/\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hTensor" or (errorHandler.buildDepError "hTensor"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "haquil-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hTensor" or (errorHandler.buildDepError "hTensor"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }