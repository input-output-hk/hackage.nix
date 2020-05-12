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
      specVersion = "1.10";
      identifier = { name = "clingo"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Paul Ogris";
      maintainer = "paul@tsahyt.com";
      author = "Paul Ogris";
      homepage = "https://github.com/tsahyt/clingo-haskell#readme";
      url = "";
      synopsis = "Haskell bindings to the Clingo ASP solver";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        libs = [ (pkgs."clingo" or (errorHandler.sysDepError "clingo")) ];
        buildable = true;
        };
      exes = {
        "version" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            ];
          buildable = if flags.examples then true else false;
          };
        "dot-propagator" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "control" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "configuration" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            ];
          buildable = if flags.examples then true else false;
          };
        "theory-atoms" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "symbolic-atoms" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "ast" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "backend" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "model" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "solve-async" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = if flags.examples then true else false;
          };
        "statistics" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            ];
          buildable = if flags.examples then true else false;
          };
        "propagator" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clingo" or (errorHandler.buildDepError "clingo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }