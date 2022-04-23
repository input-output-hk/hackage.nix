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
      identifier = { name = "bearriver"; version = "0.13.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 - Ivan Perez and Manuel Bärenz";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez, Manuel Bärenz";
      homepage = "https://github.com/ivanperez-keera/dunai";
      url = "";
      synopsis = "FRP Yampa replacement implemented with Monadic Stream Functions.";
      description = "<https://hackage.haskell.org/package/Yampa Yampa> is a popular Functional\nReactive Programming (FRP) implementation that has been used extensively for\nall kinds of applications, including robotics and games.\n\n<https://dl.acm.org/doi/10.1145/2976002.2976010 Monadic Stream Functions> are\na new abstraction for data processors that combine arrows and monads. The\nlibrary <https://hackage.haskell.org/package/dunai dunai> provides a default\nimplementation.\n\nBearriver (a tributary to the Yampa river) provides the same API as Yampa,\nbut implemented using dunai underneath. The goal is to facilitate\nunderstanding what's different about Yampa, and other FRP and Reactive\nProgramming libraries, by creating wrappers around dunai defined precisely by\nthose differences.\n\nBecause dunai is particularly fast, especially with optimizations enabled,\nthis implementation is faster than traditional Yampa for medium-sized and\nlarge applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }