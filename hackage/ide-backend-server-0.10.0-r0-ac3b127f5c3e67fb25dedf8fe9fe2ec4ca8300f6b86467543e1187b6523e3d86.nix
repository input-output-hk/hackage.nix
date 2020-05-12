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
      identifier = { name = "ide-backend-server"; version = "0.10.0"; };
      license = "MIT";
      copyright = "(c) 2015 FP Complete";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "An IDE backend server";
      description = "Server executable used internally by the ide-backend library.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ide-backend-server" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-mtl" or (errorHandler.buildDepError "data-accessor-mtl"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."ide-backend-common" or (errorHandler.buildDepError "ide-backend-common"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && false) [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ]) ++ (pkgs.lib).optionals (compiler.isGhc && false) [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ]) ++ (pkgs.lib).optionals (compiler.isGhc && false || compiler.isGhc && false) [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }