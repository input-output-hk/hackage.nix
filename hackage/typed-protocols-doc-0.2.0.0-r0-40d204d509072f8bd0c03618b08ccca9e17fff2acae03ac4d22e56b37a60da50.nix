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
      specVersion = "3.0";
      identifier = { name = "typed-protocols-doc"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2023-2025 Input Output Global Inc (IOG)";
      maintainer = "tobias@well-typed.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "Derive documentation from typed-protocols source code";
      description = "Derive documentation for protocols implemented with\n[typed-protocols](https://hackage.haskell.org/package/typed-protocols).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."knob" or (errorHandler.buildDepError "knob"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."serdoc-core" or (errorHandler.buildDepError "serdoc-core"))
          (hsPkgs."typed-protocols" or (errorHandler.buildDepError "typed-protocols"))
        ];
        buildable = true;
      };
      exes = {
        "typed-protocols-doc-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-protocols" or (errorHandler.buildDepError "typed-protocols"))
            (hsPkgs."typed-protocols-doc" or (errorHandler.buildDepError "typed-protocols-doc"))
            (hsPkgs."serdoc-core" or (errorHandler.buildDepError "serdoc-core"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "typed-protocols-doc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."typed-protocols" or (errorHandler.buildDepError "typed-protocols"))
            (hsPkgs."typed-protocols-doc" or (errorHandler.buildDepError "typed-protocols-doc"))
            (hsPkgs."serdoc-core" or (errorHandler.buildDepError "serdoc-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }