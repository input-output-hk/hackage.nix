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
      identifier = { name = "base-generics"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Haskell.Zhang.Song@hotmail.com";
      author = "songzh";
      homepage = "https://github.com/HaskellZhangSong/base-generics";
      url = "";
      synopsis = "This library provides some instances for extra GHC.Generic typeclass such as Int8, Word16 and some unboxed types as well.";
      description = "This package provides Generic instance for Int8 and WOrd primitive types. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }