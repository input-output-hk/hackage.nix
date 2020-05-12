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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "scc"; version = "0.7.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008-2011 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/";
      url = "";
      synopsis = "Streaming component combinators";
      description = "SCC is a layered library of Streaming Component Combinators. The lowest layer defines stream abstractions and nested\nproducer-consumer coroutine pairs based on the Coroutine monad transformer. On top of that are streaming component\ntypes, a number of primitive streaming components and a set of component combinators. Finally, there is an executable\nthat exposes all the framework functionality in a command-line shell.\n\nThe original library design is based on paper <http://conferences.idealliance.org/extreme/html/2006/Blazevic01/EML2006Blazevic01.html>\n\nMario Bla&#382;evi&#263;, Streaming component combinators, Extreme Markup Languages, 2006.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."incremental-parser" or (errorHandler.buildDepError "incremental-parser"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "shsh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."incremental-parser" or (errorHandler.buildDepError "incremental-parser"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        "test-scc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."incremental-parser" or (errorHandler.buildDepError "incremental-parser"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }