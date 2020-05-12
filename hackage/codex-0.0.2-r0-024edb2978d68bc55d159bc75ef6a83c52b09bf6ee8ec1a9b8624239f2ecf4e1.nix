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
      identifier = { name = "codex"; version = "0.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/codex";
      url = "";
      synopsis = "A ctags file generator for cabal project dependencies.";
      description = "This tool download and cache the source code of packages in your local hackage,\nit can then use this cache to generate `tags` files aggregating the sources of all the dependencies of your cabal projects.\n\nYou basically do `codex update` in your cabal project directory and you'll get a `codex.tags` file\nthat you can use in your favorite text editor.\n\nUsage overview can be found in the <http://github.com/aloiscochard/codex#codex README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "codex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."codex" or (errorHandler.buildDepError "codex"))
            ];
          buildable = true;
          };
        };
      };
    }