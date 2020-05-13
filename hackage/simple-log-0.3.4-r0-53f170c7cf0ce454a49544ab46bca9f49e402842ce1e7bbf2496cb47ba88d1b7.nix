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
      specVersion = "1.6";
      identifier = { name = "simple-log"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "http://github.com/mvoidex/simple-log";
      url = "";
      synopsis = "Simple log for Haskell";
      description = "Log library for Haskell with removing unnecessary traces";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }