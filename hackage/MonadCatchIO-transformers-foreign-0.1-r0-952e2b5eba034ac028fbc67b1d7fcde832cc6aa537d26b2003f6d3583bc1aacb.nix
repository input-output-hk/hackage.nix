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
      identifier = {
        name = "MonadCatchIO-transformers-foreign";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "Polymorphic combinators for working with foreign functions";
      description = "Functions like 'alloca' are provided, except not restricted\nto 'IO'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"));
        buildable = true;
      };
    };
  }