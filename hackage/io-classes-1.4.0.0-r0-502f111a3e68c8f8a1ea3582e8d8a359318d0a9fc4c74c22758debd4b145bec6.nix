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
    flags = { asserts = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "io-classes"; version = "1.4.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2024 Input Output Global Inc (IOG)";
      maintainer = "Duncan Coutts duncan@well-typed.com, Marcin Szamotulski coot@coot.me";
      author = "Alexander Vieth, Duncan Coutts, Marcin Szamotulski, Thomas Winant";
      homepage = "";
      url = "";
      synopsis = "Type classes for concurrency with STM, ST and timing";
      description = "IO Monad class hierarchy compatible with\n[io-sim](https://hackage.haskell.org/package/io-sim),\n[base](https://hackage.haskell.org/package/base),\n[async](https://hackage.haskell.org/package/async),\n[stm](https://hackage.haskell.org/package/stm),\n[exceptions](https://hackage.haskell.org/package/exceptions) &\n[time](https://hackage.haskell.org/package/time) packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }