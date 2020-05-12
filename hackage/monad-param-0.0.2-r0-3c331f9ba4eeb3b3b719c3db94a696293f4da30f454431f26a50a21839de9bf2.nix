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
      specVersion = "0";
      identifier = { name = "monad-param"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006-2007, Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett <ekmett@gmail.com>";
      homepage = "http://comonad.com/haskell/monad-param/dist/doc/html/Control-Monad-Parameterized.html";
      url = "http://comonad.com/haskell/monad-param";
      synopsis = "Parameterized monads";
      description = "Implements parameterized monads by overloading the monad sugar with more liberal types.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }