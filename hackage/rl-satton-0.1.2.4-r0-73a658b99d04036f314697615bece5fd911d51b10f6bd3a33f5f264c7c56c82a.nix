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
      identifier = { name = "rl-satton"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Sergey Mironov";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "https://github.com/grwlf/rl";
      url = "";
      synopsis = "Collection of Reinforcement Learning algorithms";
      description = "rl-satton provides implementation of algorithms, described in the\n'Reinforcement Learing: An Introduction' book by Richard S. Satton and Andrew\nG. Barto. In particular, TD(0), TD(lambda), Q-learing are implemented.\nCode readability was placed above performance.\nUsage examples are provided in the ./examples folder.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rl-satton" or (errorHandler.buildDepError "rl-satton"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }