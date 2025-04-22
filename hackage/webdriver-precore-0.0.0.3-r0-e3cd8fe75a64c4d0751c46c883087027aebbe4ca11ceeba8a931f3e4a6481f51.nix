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
      identifier = { name = "webdriver-precore"; version = "0.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2025 John Walker, Adrian Glouftsis";
      maintainer = "theghostjw@gmail.com";
      author = "John Walker, Adrian Glouftsis";
      homepage = "https://github.com/pyrethrum/webdriver-precore#readme";
      url = "";
      synopsis = "A typed wrapper for W3C WebDriver protocol. A base for other libraries.";
      description = "This library provides typed definitions for the endpoints of the @<https://www.w3.org/TR/2025/WD-webdriver2-20250306/ W3C Webdriver>@.\n\nIt is intended to be used as a base for other libraries that provide a WebDriver client implementation and higher level functions. \n\nA WebDriver client implementation can be built by pattern matching on the 'W3Spec' type returned by the functions in this library,\nsending the corresponding HTTP requests to a vendor provided WebDriver, then parsing the response using the parser provided as part \nof the 'W3Spec' type.\n\nSee \"WebDriverPreCore\" for further details and [the project repo](https://github.com/pyrethrum/webdriver) for [examples](https://github.com/pyrethrum/webdriver/blob/main/webdriver-examples/README.md) .\n\nIf you are looking for a fully implemented web client library, you should check out an alternative such as [haskell-webdriver](https://github.com/haskell-webdriver/haskell-webdriver#readme).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."webdriver-precore" or (errorHandler.buildDepError "webdriver-precore"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }