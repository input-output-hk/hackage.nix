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
      identifier = { name = "prologue"; version = "3.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2016-2018 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/prologue";
      url = "";
      synopsis = "Better, more general Prelude exporting common utilities.";
      description = "Replacement for the Haskell's Prelude, exposing more commonly used functions and patching old GHC ones to behave in the newest GHC's way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."container" or (errorHandler.buildDepError "container"))
          (hsPkgs."convert" or (errorHandler.buildDepError "convert"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."functor-utils" or (errorHandler.buildDepError "functor-utils"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."impossible" or (errorHandler.buildDepError "impossible"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-utils" or (errorHandler.buildDepError "lens-utils"))
          (hsPkgs."monoid" or (errorHandler.buildDepError "monoid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."typelevel" or (errorHandler.buildDepError "typelevel"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }