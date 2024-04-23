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
      identifier = { name = "monad-var"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 effectfully";
      maintainer = "effectfully@gmail.com";
      author = "effectfully";
      homepage = "https://github.com/effectfully/monad-var#readme";
      url = "";
      synopsis = "Generic operations over variables";
      description = "The aim of this library is to provide a unified set of operations (@new@, @read@, @write@, @swap@, various strict @mutate*@ functions and their derivatives (like mutate-and-return-the-old-value) and a certain interface for @MVar@-like things) over all common variable types: @IORef@, @STRef s@, @MVar@, @TVar@, @TMVar@.\nWhen possible type classes are generalized to be over abstract containers rather than variables: e.g. it'd make sense to implement @MonadRead TChan@ and @MonadMutate_ Vector@ instances, but no such instances are provided right now.\nThere are also some lenses to be described in an upcoming blog post.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }