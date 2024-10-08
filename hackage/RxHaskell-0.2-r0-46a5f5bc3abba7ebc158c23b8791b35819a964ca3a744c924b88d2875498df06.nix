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
      specVersion = "1.12";
      identifier = { name = "RxHaskell"; version = "0.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Justin Spahr-Summers";
      maintainer = "justin.spahrsummers@gmail.com";
      author = "Justin Spahr-Summers";
      homepage = "https://github.com/jspahrsummers/RxHaskell";
      url = "";
      synopsis = "Reactive Extensions for Haskell";
      description = "An implementation of functional reactive programming based on Microsoft's Reactive Extensions for .NET: <http://msdn.microsoft.com/en-us/library/hh242985(v=VS.103).aspx>.\n\nRxHaskell offers a monadic API, making it easier to interleave side effects and imperative-style code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }