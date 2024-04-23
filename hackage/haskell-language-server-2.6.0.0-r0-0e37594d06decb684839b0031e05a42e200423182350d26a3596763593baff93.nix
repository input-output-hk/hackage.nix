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
    flags = {
      pedantic = false;
      ignore-plugins-ghc-bounds = false;
      cabal = true;
      class = true;
      callhierarchy = true;
      eval = true;
      importlens = true;
      rename = true;
      retrie = true;
      hlint = true;
      stan = true;
      modulename = true;
      pragmas = true;
      splice = true;
      alternatenumberformat = true;
      qualifyimportednames = true;
      coderange = true;
      changetypesignature = true;
      gadt = true;
      explicitfixity = true;
      explicitfields = true;
      overloadedrecorddot = true;
      semantictokens = true;
      floskell = true;
      fourmolu = true;
      ormolu = true;
      stylishhaskell = true;
      refactor = true;
      dynamic = true;
      cabalfmt = true;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "haskell-language-server"; version = "2.6.0.0"; };
      license = "Apache-2.0";
      copyright = "The Haskell IDE Team";
      maintainer = "alan.zimm@gmail.com";
      author = "The Haskell IDE Team";
      homepage = "https://github.com/haskell/haskell-language-server#readme";
      url = "";
      synopsis = "LSP server for GHC";
      description = "Please see the README on GitHub at <https://github.com/haskell/haskell-language-server#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((((((((((((((((((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
          (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
          (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
          (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hls-graph" or (errorHandler.buildDepError "hls-graph"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
        ] ++ pkgs.lib.optional (flags.cabal) (hsPkgs."hls-cabal-plugin" or (errorHandler.buildDepError "hls-cabal-plugin"))) ++ pkgs.lib.optional (flags.callhierarchy) (hsPkgs."hls-call-hierarchy-plugin" or (errorHandler.buildDepError "hls-call-hierarchy-plugin"))) ++ pkgs.lib.optional (flags.cabalfmt) (hsPkgs."hls-cabal-fmt-plugin" or (errorHandler.buildDepError "hls-cabal-fmt-plugin"))) ++ pkgs.lib.optional (flags.changetypesignature) (hsPkgs."hls-change-type-signature-plugin" or (errorHandler.buildDepError "hls-change-type-signature-plugin"))) ++ pkgs.lib.optional (flags.class && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-class-plugin" or (errorHandler.buildDepError "hls-class-plugin"))) ++ pkgs.lib.optional (flags.eval) (hsPkgs."hls-eval-plugin" or (errorHandler.buildDepError "hls-eval-plugin"))) ++ pkgs.lib.optional (flags.importlens) (hsPkgs."hls-explicit-imports-plugin" or (errorHandler.buildDepError "hls-explicit-imports-plugin"))) ++ pkgs.lib.optional (flags.rename && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-rename-plugin" or (errorHandler.buildDepError "hls-rename-plugin"))) ++ pkgs.lib.optional (flags.retrie && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-retrie-plugin" or (errorHandler.buildDepError "hls-retrie-plugin"))) ++ pkgs.lib.optional (flags.hlint && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-hlint-plugin" or (errorHandler.buildDepError "hls-hlint-plugin"))) ++ pkgs.lib.optional (flags.stan && (compiler.isGhc && compiler.version.gt "8.8.1" && (compiler.isGhc && compiler.version.le "9.2.3") || compiler.isGhc && compiler.version.ge "9.4.0" && (compiler.isGhc && compiler.version.lt "9.10.0"))) (hsPkgs."hls-stan-plugin" or (errorHandler.buildDepError "hls-stan-plugin"))) ++ pkgs.lib.optional (flags.modulename) (hsPkgs."hls-module-name-plugin" or (errorHandler.buildDepError "hls-module-name-plugin"))) ++ pkgs.lib.optional (flags.pragmas) (hsPkgs."hls-pragmas-plugin" or (errorHandler.buildDepError "hls-pragmas-plugin"))) ++ pkgs.lib.optional (flags.splice && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-splice-plugin" or (errorHandler.buildDepError "hls-splice-plugin"))) ++ pkgs.lib.optional (flags.alternatenumberformat) (hsPkgs."hls-alternate-number-format-plugin" or (errorHandler.buildDepError "hls-alternate-number-format-plugin"))) ++ pkgs.lib.optional (flags.qualifyimportednames) (hsPkgs."hls-qualify-imported-names-plugin" or (errorHandler.buildDepError "hls-qualify-imported-names-plugin"))) ++ pkgs.lib.optional (flags.coderange) (hsPkgs."hls-code-range-plugin" or (errorHandler.buildDepError "hls-code-range-plugin"))) ++ pkgs.lib.optional (flags.gadt && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-gadt-plugin" or (errorHandler.buildDepError "hls-gadt-plugin"))) ++ pkgs.lib.optional (flags.explicitfixity) (hsPkgs."hls-explicit-fixity-plugin" or (errorHandler.buildDepError "hls-explicit-fixity-plugin"))) ++ pkgs.lib.optional (flags.explicitfields) (hsPkgs."hls-explicit-record-fields-plugin" or (errorHandler.buildDepError "hls-explicit-record-fields-plugin"))) ++ pkgs.lib.optional (flags.floskell && (compiler.isGhc && compiler.version.lt "9.7" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-floskell-plugin" or (errorHandler.buildDepError "hls-floskell-plugin"))) ++ pkgs.lib.optional (flags.fourmolu) (hsPkgs."hls-fourmolu-plugin" or (errorHandler.buildDepError "hls-fourmolu-plugin"))) ++ pkgs.lib.optional (flags.ormolu) (hsPkgs."hls-ormolu-plugin" or (errorHandler.buildDepError "hls-ormolu-plugin"))) ++ pkgs.lib.optional (flags.stylishhaskell && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-stylish-haskell-plugin" or (errorHandler.buildDepError "hls-stylish-haskell-plugin"))) ++ pkgs.lib.optional (flags.refactor && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-refactor-plugin" or (errorHandler.buildDepError "hls-refactor-plugin"))) ++ pkgs.lib.optional (flags.overloadedrecorddot && (compiler.isGhc && compiler.version.ge "9.2.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-overloaded-record-dot-plugin" or (errorHandler.buildDepError "hls-overloaded-record-dot-plugin"))) ++ pkgs.lib.optional (flags.semantictokens) (hsPkgs."hls-semantic-tokens-plugin" or (errorHandler.buildDepError "hls-semantic-tokens-plugin"));
        buildable = true;
      };
      exes = {
        "haskell-language-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."haskell-language-server" or (errorHandler.buildDepError "haskell-language-server"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
            (hsPkgs."hiedb" or (errorHandler.buildDepError "hiedb"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."hls-graph" or (errorHandler.buildDepError "hls-graph"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "haskell-language-server-wrapper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."haskell-language-server" or (errorHandler.buildDepError "haskell-language-server"))
            (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ] ++ pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "func-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."ghcide" or (errorHandler.buildDepError "ghcide"))
            (hsPkgs."ghcide-test-utils" or (errorHandler.buildDepError "ghcide-test-utils"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
            (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."lsp-test" or (errorHandler.buildDepError "lsp-test"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          ] ++ pkgs.lib.optional (flags.refactor && (compiler.isGhc && compiler.version.lt "9.8.0" || flags.ignore-plugins-ghc-bounds)) (hsPkgs."hls-refactor-plugin" or (errorHandler.buildDepError "hls-refactor-plugin"));
          build-tools = [
            (hsPkgs.buildPackages.haskell-language-server.components.exes.haskell-language-server or (pkgs.buildPackages.haskell-language-server or (errorHandler.buildToolDepError "haskell-language-server:haskell-language-server")))
            (hsPkgs.buildPackages.ghcide.components.exes.ghcide-test-preprocessor or (pkgs.buildPackages.ghcide-test-preprocessor or (errorHandler.buildToolDepError "ghcide:ghcide-test-preprocessor")))
          ];
          buildable = true;
        };
        "wrapper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hls-test-utils" or (errorHandler.buildDepError "hls-test-utils"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.haskell-language-server.components.exes.haskell-language-server-wrapper or (pkgs.buildPackages.haskell-language-server-wrapper or (errorHandler.buildToolDepError "haskell-language-server:haskell-language-server-wrapper")))
            (hsPkgs.buildPackages.haskell-language-server.components.exes.haskell-language-server or (pkgs.buildPackages.haskell-language-server or (errorHandler.buildToolDepError "haskell-language-server:haskell-language-server")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghcide-bench" or (errorHandler.buildDepError "ghcide-bench"))
            (hsPkgs."haskell-language-server" or (errorHandler.buildDepError "haskell-language-server"))
            (hsPkgs."hls-plugin-api" or (errorHandler.buildDepError "hls-plugin-api"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."shake-bench" or (errorHandler.buildDepError "shake-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.ghcide-bench.components.exes.ghcide-bench or (pkgs.buildPackages.ghcide-bench or (errorHandler.buildToolDepError "ghcide-bench:ghcide-bench")))
            (hsPkgs.buildPackages.hp2pretty.components.exes.hp2pretty or (pkgs.buildPackages.hp2pretty or (errorHandler.buildToolDepError "hp2pretty:hp2pretty")))
            (hsPkgs.buildPackages.implicit-hie.components.exes.gen-hie or (pkgs.buildPackages.gen-hie or (errorHandler.buildToolDepError "implicit-hie:gen-hie")))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "9.5"
            then false
            else true;
        };
      };
    };
  }