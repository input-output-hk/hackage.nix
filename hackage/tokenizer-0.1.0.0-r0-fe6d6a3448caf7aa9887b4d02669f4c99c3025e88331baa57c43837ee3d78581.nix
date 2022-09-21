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
      specVersion = "3.0";
      identifier = { name = "tokenizer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Lev Dvorkin (c) 2022";
      maintainer = "lev_135@mail.ru";
      author = "Lev135";
      homepage = "https://github.com/Lev135/tokenizer";
      url = "";
      synopsis = "Check uniqueness and tokenize safely";
      description = "Provide fast enough uniqueness checking for set of tokens specified on a\nsubset of regular expression. See README for more info.\n\n/WARNING this package is not tested enough for the moment. Bugs are very likely here./";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."tokenizer" or (errorHandler.buildDepError "tokenizer"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "tokenizer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tokenizer" or (errorHandler.buildDepError "tokenizer"))
            ];
          buildable = true;
          };
        "test-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }