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
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-lib"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad <anton@ekblad.cc>";
      homepage = "http://github.com/valderman/haste-compiler";
      url = "";
      synopsis = "Base libraries for haste-compiler.";
      description = "Base libraries for haste-compiler. Only useful for web development, with Haste or vanilla GHC + haste-app.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haste-prim" or (errorHandler.buildDepError "haste-prim"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if flags.haste
          then [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ]
          else [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ]);
        buildable = true;
        };
      };
    }