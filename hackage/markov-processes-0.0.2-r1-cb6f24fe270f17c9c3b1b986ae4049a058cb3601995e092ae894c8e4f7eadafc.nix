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
      identifier = { name = "markov-processes"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Vikram Verma <me@vikramverma.com>";
      author = "Leopold Tal G <leopold.tal.dg@gmail.com>, Yorick van Pelt <yorickvanpelt@gmail.com>, Vikram Verma <me@vikramverma.com>";
      homepage = "";
      url = "";
      synopsis = "Hidden Markov processes.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "markov-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."assertions" or (errorHandler.buildDepError "assertions"))
            (hsPkgs."markov-processes" or (errorHandler.buildDepError "markov-processes"))
            (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }