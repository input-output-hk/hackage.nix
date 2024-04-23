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
      specVersion = "3.0";
      identifier = { name = "free-applicative-t"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/functor-monad/tree/main/free-applicative-t";
      url = "";
      synopsis = "Free Applicative Transformer";
      description = "The free applicative transformer @ApT@, in the same sense @FreeT@ (from the package \"free\")\nis the free monad transformer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
        ];
        buildable = true;
      };
      tests = {
        "free-applicative-t-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free-applicative-t" or (errorHandler.buildDepError "free-applicative-t"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }