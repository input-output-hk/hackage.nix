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
    flags = { newaccelerate = false; cuda = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "meta-par-accelerate"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adam Foltzer 2011-2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton, Adam Foltzer 2011-2012";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Support for integrated Accelerate computations within Meta-par.";
      description = "This package provides a 'Control.Monad.Par.Meta.Resource' for building meta-par\n(<hackage.haskell.org/package/meta-par>) schedulers with GPU support.\nThis package also provides a complete scheduler for CPU plus GPU\nexecution.  It supports the 'Control.Monad.Par.Par' monad\nprogramming model with additional support for GPUs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."meta-par" or (errorHandler.buildDepError "meta-par"))
          (hsPkgs."abstract-deque" or (errorHandler.buildDepError "abstract-deque"))
          (hsPkgs."abstract-par-accelerate" or (errorHandler.buildDepError "abstract-par-accelerate"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ pkgs.lib.optional (flags.newaccelerate && flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (if flags.newaccelerate
          then [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
          ]
          else [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ]);
        buildable = true;
      };
    };
  }