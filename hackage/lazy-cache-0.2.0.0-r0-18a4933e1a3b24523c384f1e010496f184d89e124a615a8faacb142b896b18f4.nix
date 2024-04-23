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
      identifier = { name = "lazy-cache"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "2019-2022 (C) Фонд \"Талант и Успех\"";
      maintainer = "backend-dev@sirius.online";
      author = "Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "Library for caching IO action that leverages on GHC RTS implementation";
      description = "The library provides an interface for caching the results of IO actions.\nThis library relies on a blackholing — mechanism that is used to implement lazy\nevaluation for avoiding concurrent runs of the action\n(this is where the name of the library comes from).\n\nThe library provides caching mechanismsl with the following properties:\n\n1. when the function is called the successful result is cached by no more than a provided time;\n2. if the function ends with an exception, it will be rethrown, and the result will not be cached;\n3. if the function will be called with the same input value it immediately gets cached\nresult;\n4. if functions are called concurrently with the different input values they will not\nblock each other;\n5. if functions will be called concurrently with the same argument then only one will\nact, others will wait until the first one is finished and will either return the\nresult once it's received, or will rethrow an exception if the first one\nexits with an exception;\n6. outdated values are cleared only on accesses to the cache, so if no action is called\nthe data will not be cleared.\n\nThe main entry point of the library is \"System.Cache\" module, it explains how to\nuse the library and provides the public API, that does not depend on the actual\nstore implementation.\n\nThe library provides an interface for caching, and three implementations:\n\n1. \"System.Cache.Impl.Ghc\" — the main one based on GHC system;\n2. \"System.Cache.Impl.MVar\" — implementation based on library functions;\n3. \"System.Cache.Impl.NoCache\" — implementation that disables caching, but keeps the same interface\n\nIf you want to implement your own caching mechanism, or use internal API, you\ncan refer to the \"System.Cache.Internal.Interface\" module for an additional documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lazy-cache" or (errorHandler.buildDepError "lazy-cache"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }