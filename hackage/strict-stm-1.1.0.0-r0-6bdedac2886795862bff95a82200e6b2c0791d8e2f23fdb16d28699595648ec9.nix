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
    flags = { checktvarinvariant = false; asserts = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "strict-stm"; version = "1.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2023 Input Output Global Inc (IOG)";
      maintainer = "Duncan Coutts dunca@well-typed.com, Marcin Szamotulski coot@coot.me";
      author = "Alexander Vieth, Duncan Coutts, Marcin Szamotulski, Thomas Winant";
      homepage = "";
      url = "";
      synopsis = "Strict STM interface polymorphic over stm implementation.";
      description = "Strict STM interface provided on top of\n[io-classes](https://hackage.haskell.org/package/io-classes) and thus\ncompatible with [stm](https://hackage.haskell.org/package/stm)\n& [io-sim](https://hackage.haskell.org/package/io-sim).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
        ];
        buildable = true;
      };
    };
  }