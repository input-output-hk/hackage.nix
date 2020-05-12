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
      identifier = { name = "boring"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/boring";
      url = "";
      synopsis = "Boring and Absurd types";
      description = "* @Boring@ types are isomorphic to @()@.\n\n* @Absurd@ types are isomorphic to @Void@.\n\nSee [What does () mean in Haskell -answer by Conor McBride](https://stackoverflow.com/questions/33112439/what-does-mean-in-haskell/33115522#33115522)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."streams" or (errorHandler.buildDepError "streams"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
        buildable = true;
        };
      };
    }