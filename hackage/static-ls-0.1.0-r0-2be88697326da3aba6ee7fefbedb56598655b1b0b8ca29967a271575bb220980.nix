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
    flags = { dev = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "static-ls"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "josephrsumabat@gmail.com";
      author = "Joseph Sumabat";
      homepage = "https://github.com/josephsumabat/static-ls#readme";
      url = "";
      synopsis = "See README on Github for more information";
      description = "static-ls (\"static language server\") reads static project information to provide IDE functionality through the language server protocol. static-ls will not generate this information on its own and instead will rely on the user to generate this information via separate programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      exes = {
        "static-ls" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."static-ls" or (errorHandler.buildDepError "static-ls"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      tests = {
        "static-ls-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."static-ls" or (errorHandler.buildDepError "static-ls"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }