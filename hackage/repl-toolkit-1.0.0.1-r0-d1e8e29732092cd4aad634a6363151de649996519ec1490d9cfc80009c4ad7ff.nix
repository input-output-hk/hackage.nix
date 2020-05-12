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
      identifier = { name = "repl-toolkit"; version = "1.0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/repl-toolkit";
      url = "";
      synopsis = "Toolkit for quickly whipping up config files and command-line interfaces.";
      description = "A simple toolkit for quickly whipping up REPLs, input validation and sets of commands included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."functor-monadic" or (errorHandler.buildDepError "functor-monadic"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }