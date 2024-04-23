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
      specVersion = "1.8";
      identifier = { name = "monad-statevar"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2013";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "http://github.com/joeyadams/hs-monad-statevar";
      url = "";
      synopsis = "Concise, overloaded accessors for IORef, STRef, TVar";
      description = "Overloaded 'get' and 'put' for state variables ('IORef', 'STRef', 'TVar')\nto make reading and writing more concise.\n\nInspired by the StateVar package by Sven Panne, with the following\ndifferences:\n\n* Supports variables in other monads besides 'IO' (e.g. 'TVar', 'STRef').\n\n* Provides non-infix 'put', 'modify', etc.\n\n* Does not provide concrete state variables (i.e. ones where you supply\nget and put callbacks).  If you want this feature, please submit an\nissue.\n\n* Named \\\"Control.Monad.StateVar\\\" instead of \\\"Data.StateVar\\\",\nto avoid a module naming conflict.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-statevar" or (errorHandler.buildDepError "monad-statevar"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          buildable = true;
        };
      };
    };
  }