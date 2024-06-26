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
      specVersion = "1.6";
      identifier = { name = "ipprint"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gleb.alexeev@gmail.com";
      author = "Gleb Alexeyev";
      homepage = "";
      url = "";
      synopsis = "Tiny helper for pretty-printing values in ghci console";
      description = "Tiny helper for pretty-printing values in ghci console\n\nUsage example:\n\n>Prelude> let e = replicate 5 [1..14] -- value we want to print\n>Prelude> :m + IPPrint\n>Prelude IPPrint> pprint e\n>   [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]]\n\nTerminal width support added by Jean-Marie Gaillourdet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sr-extra" or (errorHandler.buildDepError "sr-extra"))
        ];
        buildable = true;
      };
    };
  }