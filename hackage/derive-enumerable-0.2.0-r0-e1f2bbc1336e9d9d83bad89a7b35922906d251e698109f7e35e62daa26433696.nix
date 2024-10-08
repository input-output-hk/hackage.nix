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
      identifier = { name = "derive-enumerable"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2015-2023 Maciej Goszczycki, Evan Cofsky";
      maintainer = "Evan Cofsky <evan@theunixman.com>";
      author = "Evan Cofsky <evan@theunixman.com>";
      homepage = "https://github.com/theunixman/derive-enumerable";
      url = "";
      synopsis = "Generic instances for enumerating complex data types";
      description = "Generalized equivalent to doing `[minBound..maxBound]` but on complex types.\n\n> λ :m +Data.Enumerable.Generic\n> λ :set -XDeriveGeneric\n> λ data Flag = Flag Bool Word8 deriving (Show, Generic)\n> λ instance Enumerable Flag\n> λ instance Default Flag where def = Flag False 0\n> λ allEnum :: [Flag]\n> [Flag False 0,Flag True 0,Flag False 1, (..snip..) Flag False 255,Flag True 255]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }