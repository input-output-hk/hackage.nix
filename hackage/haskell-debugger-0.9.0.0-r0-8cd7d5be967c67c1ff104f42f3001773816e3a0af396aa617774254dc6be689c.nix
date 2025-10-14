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
      specVersion = "3.12";
      identifier = { name = "haskell-debugger"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rodrigo@well-typed.com";
      author = "Rodrigo Mesquita";
      homepage = "https://github.com/well-typed/haskell-debugger";
      url = "";
      synopsis = "A step-through machine-interface debugger for GHC Haskell";
      description = "This package provides a standalone executable\ncalled @hdb@ which can be used to step-through Haskell\nprograms and can act as a Debug Adapter Protocol (DAP)\nserver in the @server@ mode for debugging Haskell\nprograms.\n.\nThe Debug Adapter is implemented on top of the\n@haskell-debugger@ library which defines the primitive\ndebugging capabilities. These debugger features are\nimplemented by managing a GHC session and debugging it\nthrough the GHC API.\n.\nThe @hdb@ is transparently compatible with most projects\nbecause it uses @hie-bios@ to figure out the right flags to\ninvoke GHC with.\n.\nAdditional information can be found [in the README](https://github.com/well-typed/haskell-debugger).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
        ];
        buildable = true;
      };
      exes = {
        "hdb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskell-debugger" or (errorHandler.buildDepError "haskell-debugger"))
            (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
            (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
            (hsPkgs."implicit-hie" or (errorHandler.buildDepError "implicit-hie"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dap" or (errorHandler.buildDepError "dap"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "haskell-debugger-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-debugger" or (errorHandler.buildDepError "haskell-debugger"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."dap" or (errorHandler.buildDepError "dap"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.haskell-debugger.components.exes.hdb or (pkgs.pkgsBuildBuild.hdb or (errorHandler.buildToolDepError "haskell-debugger:hdb")))
          ];
          buildable = true;
        };
      };
    };
  }