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
      identifier = { name = "hls-class-plugin"; version = "1.0.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "jjc9310@gmail.com";
      author = "Junyoung Clare Jang";
      homepage = "https://github.com/haskell/haskell-language-server#readme";
      url = "";
      synopsis = "Class/instance management plugin for Haskell Language Server";
      description = "Class/instance management plugin for Haskell Language Server.\nFor usage, please see README of HLS on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hls-class-plugin" or (errorHandler.buildDepError "hls-class-plugin"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          ];
          buildable = true;
        };
      };
    };
  }