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
      identifier = { name = "pipes-safe"; version = "2.2.9"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2014 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Safety for the pipes ecosystem";
      description = "This package adds resource management and exception handling to the @pipes@\necosystem.\n\nNotable features include:\n\n* /Resource Safety/: Guarantee finalization using @finally@, @bracket@ and\nmore\n\n* /Exception Safety/: Even against asynchronous exceptions!\n\n* /Laziness/: Only acquire resources when you need them\n\n* /Promptness/: Finalize resources early when you are done with them\n\n* /Native Exception Handling/: Catch and resume from exceptions inside pipes\n\n* /No Buy-in/: Mix resource-safe pipes with unmanaged pipes using @hoist@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      };
    }