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
    flags = { pty-support = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ide-backend-server"; version = "0.10.0.1"; };
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
          depends = (((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-mtl" or (errorHandler.buildDepError "data-accessor-mtl"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
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
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "7.4.2" && compiler.version.lt "7.4.3")) [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ]) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "7.8" && compiler.version.lt "7.9")) [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ]) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "7.10" && compiler.version.lt "7.11") || compiler.isGhc && (compiler.version.ge "7.11" && compiler.version.lt "7.12")) [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }