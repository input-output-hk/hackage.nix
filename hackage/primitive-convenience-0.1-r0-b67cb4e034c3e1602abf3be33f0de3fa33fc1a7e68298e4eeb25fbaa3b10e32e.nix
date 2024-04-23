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
      identifier = { name = "primitive-convenience"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/haskell-primitive/primitive-convenience";
      url = "";
      synopsis = "convenience class for PrimMonad m/PrimState m";
      description = "This library provides convenience classes for PrimMonad/PrimBase.\n\nThe 'PrimMonad' state token type can be annoying to handle in\nconstraints. The typeclasses provided in this library let users\n(visually) notice 'PrimState' equality constraints less, by\nwitnessing that `s ~ 'PrimState' m`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }