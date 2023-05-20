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
      specVersion = "2.4";
      identifier = { name = "hls-stan-plugin"; version = "2.0.0.0"; };
      license = "Apache-2.0";
      copyright = "The Haskell IDE Team";
      maintainer = "uhbif19@gmail.com";
      author = "The Haskell IDE Team";
      homepage = "";
      url = "";
      synopsis = "Stan integration plugin with Haskell Language Server";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."stan" or (errorHandler.buildDepError "stan"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "8.10" || compiler.isGhc && (compiler.version).ge "9.0"
          then false
          else true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hls-stan-plugin" or (errorHandler.buildDepError "hls-stan-plugin"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "8.10" || compiler.isGhc && (compiler.version).ge "9.0"
            then false
            else true;
          };
        };
      };
    }