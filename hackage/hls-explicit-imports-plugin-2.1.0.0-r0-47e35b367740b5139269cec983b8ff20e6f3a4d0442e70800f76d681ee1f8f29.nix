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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = {
        name = "hls-explicit-imports-plugin";
        version = "2.1.0.0";
        };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "";
      url = "";
      synopsis = "Explicit imports plugin for Haskell Language Server";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."hls-graph" or (errorHandler.buildDepError "hls-graph"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hls-explicit-imports-plugin" or (errorHandler.buildDepError "hls-explicit-imports-plugin"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }