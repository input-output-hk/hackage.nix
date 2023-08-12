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
      specVersion = "2.4";
      identifier = { name = "hls-gadt-plugin"; version = "2.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "julytreee@gmail.com";
      author = "Lei Zhu";
      homepage = "";
      url = "";
      synopsis = "Convert to GADT syntax plugin";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-gadt-plugin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
          (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."hls-refactor-plugin" or (errorHandler.buildDepError "hls-refactor-plugin"))
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
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hls-gadt-plugin" or (errorHandler.buildDepError "hls-gadt-plugin"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."lsp-test" or (errorHandler.buildDepError "lsp-test"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }