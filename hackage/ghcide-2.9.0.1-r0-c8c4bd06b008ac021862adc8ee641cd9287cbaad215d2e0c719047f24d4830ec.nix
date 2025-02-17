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
    flags = { pedantic = false; test-exe = true; executable = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "ghcide"; version = "2.9.0.1"; };
      license = "Apache-2.0";
      copyright = "Digital Asset and Ghcide contributors 2018-2020";
      maintainer = "Ghcide contributors";
      author = "Digital Asset and Ghcide contributors";
      homepage = "https://github.com/haskell/haskell-language-server/tree/master/ghcide#readme";
      url = "";
      synopsis = "The core of an IDE";
      description = "A library for building Haskell IDE's on top of the GHC API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
          (hsPkgs."ghc-trace-events" or (errorHandler.buildDepError "ghc-trace-events"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
          (hsPkgs."hie-compat" or (errorHandler.buildDepError "hie-compat"))
          (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
          (hsPkgs."hls-graph" or (errorHandler.buildDepError "hls-graph"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."implicit-hie" or (errorHandler.buildDepError "implicit-hie"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."opentelemetry" or (errorHandler.buildDepError "opentelemetry"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."sorted-list" or (errorHandler.buildDepError "sorted-list"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-rope" or (errorHandler.buildDepError "text-rope"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      exes = {
        "ghcide-test-preprocessor" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if !flags.test-exe then false else true;
        };
        "ghcide" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = if !flags.executable then false else true;
        };
      };
    };
  }