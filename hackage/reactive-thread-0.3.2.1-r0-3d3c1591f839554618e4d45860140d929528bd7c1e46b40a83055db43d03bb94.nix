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
    flags = { profile = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "reactive-thread"; version = "0.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strager.nds@gmail.com";
      author = "Matt \"strager\" Glazar";
      homepage = "https://github.com/strager/reactive-thread";
      url = "";
      synopsis = "Reactive programming via imperative threads";
      description = "Reactive programming with threads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "example-sdl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."reactive-thread" or (errorHandler.buildDepError "reactive-thread"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }