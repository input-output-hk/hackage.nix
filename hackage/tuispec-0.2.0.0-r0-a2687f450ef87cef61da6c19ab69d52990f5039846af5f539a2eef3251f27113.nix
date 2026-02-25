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
      specVersion = "3.8";
      identifier = { name = "tuispec"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2026 Matthias Pall Gissurarson";
      maintainer = "mpg@mpg.is";
      author = "Matthias Pall Gissurarson";
      homepage = "https://github.com/Tritlo/tuispec";
      url = "";
      synopsis = "Playwright-like black-box testing for terminal UIs over PTY";
      description = "@tuispec@ is a Haskell framework for black-box testing of terminal user\ninterfaces (TUIs) over PTY.\n.\nIt provides a Playwright-inspired DSL for launching apps, sending\nkeystrokes, waiting for text, and capturing snapshots (ANSI text + PNG).\n.\nTests are regular compiled Haskell programs using @tasty@ with per-test\nisolation via fresh PTY processes. The framework is generic to any TUI\nbinary runnable from a shell, with no instrumentation required inside the\ntarget app.\n.\nFeatures include:\n.\n* PTY transport with per-test isolation\n* Text selectors (@Exact@, @Regex@, @At@, @Within@, @Nth@)\n* Keypress and text input actions\n* Snapshot assertions with ANSI text + PNG artifacts\n* Configurable retry, timeout, and ambiguity modes\n* JSON-RPC server for interactive orchestration\n* REPL-style session mode for ad-hoc exploration";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."jsonrpc" or (errorHandler.buildDepError "jsonrpc"))
          (hsPkgs."posix-pty" or (errorHandler.buildDepError "posix-pty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "tuispec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tuispec" or (errorHandler.buildDepError "tuispec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tuispec-smoke" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tuispec" or (errorHandler.buildDepError "tuispec"))
          ];
          buildable = true;
        };
      };
    };
  }