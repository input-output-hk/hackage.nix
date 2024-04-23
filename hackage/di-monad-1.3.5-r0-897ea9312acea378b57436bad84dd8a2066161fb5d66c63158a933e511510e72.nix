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
    flags = {
      monad-control = true;
      pipes = true;
      pipes-safe = true;
      primitive = true;
      streaming = true;
      transformers-base = true;
      unliftio-core = true;
      resourcet = true;
      conduit = true;
    };
    package = {
      specVersion = "1.18";
      identifier = { name = "di-monad"; version = "1.3.5"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "mtl flavoured typeful hierarchical structured logging for di-core.";
      description = "mtl flavoured typeful hierarchical structured logging for di-core.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."di-core" or (errorHandler.buildDepError "di-core"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optionals (flags.monad-control) [
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ]) ++ pkgs.lib.optional (flags.pipes) (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))) ++ pkgs.lib.optionals (flags.pipes-safe) [
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ]) ++ pkgs.lib.optional (flags.primitive) (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))) ++ pkgs.lib.optionals (flags.streaming) [
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ]) ++ pkgs.lib.optional (flags.transformers-base) (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))) ++ pkgs.lib.optional (flags.unliftio-core) (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))) ++ pkgs.lib.optionals (flags.resourcet) [
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ]) ++ pkgs.lib.optionals (flags.conduit) [
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
        ];
        buildable = true;
      };
    };
  }