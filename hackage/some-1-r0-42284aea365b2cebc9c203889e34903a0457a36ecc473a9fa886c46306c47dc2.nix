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
    flags = { newtype-unsafe = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "some"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "James Cook <mokus@deepbondi.net>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/some";
      url = "";
      synopsis = "Existential type: Some";
      description = "This library defines an existential type 'Some'.\n\n@\ndata Some f where\n\\    Some :: f a -> Some f\n@\n\nin few variants, and utilities to work with it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."type-equality" or (errorHandler.buildDepError "type-equality"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      };
    }