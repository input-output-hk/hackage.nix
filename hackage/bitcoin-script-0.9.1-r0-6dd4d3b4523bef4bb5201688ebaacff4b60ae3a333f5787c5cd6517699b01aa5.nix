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
      identifier = { name = "bitcoin-script"; version = "0.9.1"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://github.com/solatis/haskell-bitcoin-script";
      url = "";
      synopsis = "Compilation, manipulation and decompilation of Bitcoin scripts";
      description = "Provides pure functions to compile, decompile and manipulate Bitcoin scripts.\nThis project relies heavily on the Haskoin project for the compiling and\ndecompiling of the script assembly, and continuously merges changes downstream.\nThe advantage this library has over Haskoin is that it uses very few\ndependencies and doesn't rely on external libraries such as LevelDB and snappy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
          ];
          buildable = true;
        };
      };
    };
  }