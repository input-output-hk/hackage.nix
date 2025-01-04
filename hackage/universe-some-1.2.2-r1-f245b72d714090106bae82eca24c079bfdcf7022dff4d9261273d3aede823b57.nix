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
      identifier = { name = "universe-some"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014, Oleg Grenrus 2019";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner, Oleg Grenrus";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for Some from some";
      description = "A class for finite and recursively enumerable types and some helper functions for enumerating them\ndefined in @universe-base@ package:\n\n@\nclass Universe a where universe :: [a]\nclass Universe a => Finite a where universeF :: [a]; universeF = universe\n@\n\nThis package adds\n\n@\nclass UniverseSome f where universeSome :: [Some f]\nclass UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe\n@\n\nclasses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
        ];
        buildable = true;
      };
      tests = {
        "th-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
            (hsPkgs."universe-some" or (errorHandler.buildDepError "universe-some"))
          ];
          buildable = true;
        };
      };
    };
  }