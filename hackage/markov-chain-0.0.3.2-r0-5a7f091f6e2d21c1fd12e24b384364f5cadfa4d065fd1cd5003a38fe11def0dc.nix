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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "markov-chain"; version = "0.0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/markov-chain/";
      url = "";
      synopsis = "Markov Chains for generating random sequences with a user definable behaviour.";
      description = "This library can be used to generate random sequences of anything\nwith a behaviour that is adapted to some training data.\nInput a marketing text or a speech and\nrecompose it to another arbitrary text of this sort.\nInput a dictionary of person names and create new names.\nInput a sequence of notes and get out a new melody.\nInput a set of Haskell modules and generate ...\nnice idea but the result will certainly have neither correct syntax nor types.\nI think, it's a good thing about Haskell, that you cannot fool it so easily.\nThe idea is very simple:\nThe algorithm analyses your input\\/training data\nwith respect to how likely an @a@ or @e@ follows the letters @r@ and @e@.\nThen on recomposition it chooses subsequent letters randomly\naccording to the frequencies found in the training data.\nThis library is well suited for /bull-shit generators/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }