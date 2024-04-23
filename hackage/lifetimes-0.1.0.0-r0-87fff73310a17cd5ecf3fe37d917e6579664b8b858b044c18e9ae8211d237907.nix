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
      specVersion = "2.2";
      identifier = { name = "lifetimes"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-lifetimes";
      url = "";
      synopsis = "Flexible manual resource management";
      description = "The lifetimes package provides support for manual resource management,\nin a way that is more flexible than what is provided by @resourcet@ or\n@bracket@.\n\nLike @resourcet@, this package allows releasing acquired resources early.\nIn addition, it also provides move semantics: resources can be moved to\na different lifetime after they are acquired. Lifetimes are first class\nvalues, which can themselves be acquired as resources, allowing for\nheirarchical management as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."monad-stm" or (errorHandler.buildDepError "monad-stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."monad-stm" or (errorHandler.buildDepError "monad-stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."lifetimes" or (errorHandler.buildDepError "lifetimes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
          buildable = true;
        };
      };
    };
  }