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
      specVersion = "1.9.2";
      identifier = { name = "cabal-lenses"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "Lenses and traversals for the Cabal library.";
      description = "Lenses and traversals (compatible with the <https://hackage.haskell.org/package/lens lens> library) for\nthe <https://hackage.haskell.org/package/Cabal Cabal> library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }