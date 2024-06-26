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
      identifier = { name = "hls-plugin-api"; version = "1.2.0.1"; };
      license = "Apache-2.0";
      copyright = "The Haskell IDE Team";
      maintainer = "alan.zimm@gmail.com";
      author = "The Haskell IDE Team";
      homepage = "https://github.com/haskell/haskell-language-server#readme";
      url = "";
      synopsis = "Haskell Language Server API for plugin communication";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hls-graph" or (errorHandler.buildDepError "hls-graph"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."opentelemetry" or (errorHandler.buildDepError "opentelemetry"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
                else pkgs.lib.optional (compiler.isGhc && compiler.version.eq "9.0.1") (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat")))) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
    };
  }