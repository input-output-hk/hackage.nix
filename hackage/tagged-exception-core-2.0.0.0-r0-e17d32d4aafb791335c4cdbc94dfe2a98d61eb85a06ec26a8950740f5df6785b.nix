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
    flags = { pedantic = false; base-ge-4_2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tagged-exception-core"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 - 2014, Peter Trsko";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/tagged-exception";
      url = "";
      synopsis = "Reflect exceptions using phantom types.";
      description = "This library provides interface similar to /extensible-exceptions/.  It\nintroduces @Throws@ monad transformer that uses phantom type to tag code that\nmay raise exception.  Intention is to make exceptions explicit and to enforce\nexception handling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
        ] ++ (if flags.base-ge-4_2
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ]);
        buildable = true;
      };
    };
  }