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
      identifier = { name = "buffon"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2015 Derek Elkins";
      maintainer = "derek.a.elkins+github@gmail.com";
      author = "Derek Elkins";
      homepage = "https://github.com/derekelkins/buffon";
      url = "";
      synopsis = "An implementation of Buffon machines.";
      description = "An implementation of everything in \"On Buffon Machines and Numbers\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
          (hsPkgs."monad-primitive" or (errorHandler.buildDepError "monad-primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }