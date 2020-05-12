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
      identifier = { name = "universe-dependent-sum"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for types from dependent-sum";
      description = "A class for finite and recursively enumerable types and some helper functions for enumerating them\ndefined in @universe-base@ package:\n\n@\nclass Universe a where universe :: [a]\nclass Universe a => Finite a where universeF :: [a]; universeF = universe\n@\n\nThis package adds\n\n@\nclass UniverseSome f where universeSome :: [Some f]\nclass UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe\n@\n\nclasses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          (hsPkgs."universe-some" or (errorHandler.buildDepError "universe-some"))
          ];
        buildable = true;
        };
      };
    }