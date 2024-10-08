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
      specVersion = "2.2";
      identifier = { name = "hls-retrie-plugin"; version = "1.0.1.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "";
      url = "";
      synopsis = "Retrie integration plugin for Haskell Language Server";
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
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          (hsPkgs."retrie" or (errorHandler.buildDepError "retrie"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ (if compiler.isGhc && compiler.version.lt "8.10.5"
          then [
            (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat"))
          ]
          else if compiler.isGhc && compiler.version.eq "8.10.5"
            then [
              (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat"))
            ]
            else if compiler.isGhc && compiler.version.eq "8.10.6"
              then [
                (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat"))
              ]
              else if compiler.isGhc && compiler.version.eq "8.10.7"
                then [
                  (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat"))
                ]
                else pkgs.lib.optional (compiler.isGhc && compiler.version.eq "9.0.1") (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat")));
        buildable = true;
      };
    };
  }