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
      specVersion = "1.6";
      identifier = { name = "xml-enumerator"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michaels@suite-sol.com>";
      author = "Michael Snoyman <michaels@suite-sol.com>";
      homepage = "http://github.com/snoyberg/xml-enumerator";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the enumerator package.";
      description = "Provides the ability to parse and render XML in a streaming manner using the enumerator package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."attoparsec-text-enumerator" or (errorHandler.buildDepError "attoparsec-text-enumerator"))
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }