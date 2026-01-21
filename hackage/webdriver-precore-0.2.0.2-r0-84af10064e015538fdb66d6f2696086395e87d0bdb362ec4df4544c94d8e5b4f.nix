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
    flags = { legacy-test = false; debug-local-config = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "webdriver-precore"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2025 John Walker, Adrian Glouftsis";
      maintainer = "theghostjw@gmail.com";
      author = "John Walker, Adrian Glouftsis";
      homepage = "https://github.com/pyrethrum/webdriver-precore#readme";
      url = "";
      synopsis = "A typed wrapper for W3C WebDriver (HTTP and BiDi) protocols.";
      description = "This library provides typed definitions for the WebDriver W3C spec, both @<https://www.w3.org/TR/2025/WD-webdriver2-20251028/ HTTP>@ and @<https://www.w3.org/TR/2026/WD-webdriver-bidi-20260109/ BiDi>@.\nIt is designed as a foundation for building WebDriver client libraries providing type-safe endpoint definitions and response parsers without any client implementation.\nIf you are looking for a fully implemented web client library, you should check out an alternative such as [haskell-webdriver](https://github.com/haskell-webdriver/haskell-webdriver#readme).\n__For complete documentation, module organisation, and migration guides, see \"WebDriverPreCore\".__\nSee also the @<https://github.com/pyrethrum/webdriver project repo>@ and the test directory for @<https://github.com/pyrethrum/webdriver/tree/main/webdriver-precore/test#readme examples>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."webdriver-precore".components.sublibs.utils-internal or (errorHandler.buildDepError "webdriver-precore:utils-internal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      sublibs = {
        "utils-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."webdriver-precore".components.sublibs.utils-internal or (errorHandler.buildDepError "webdriver-precore:utils-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."webdriver-precore" or (errorHandler.buildDepError "webdriver-precore"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
          buildable = true;
        };
      };
    };
  }