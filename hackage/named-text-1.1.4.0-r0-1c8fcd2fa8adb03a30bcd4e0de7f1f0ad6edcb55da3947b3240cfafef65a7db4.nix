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
    flags = { with-json = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "named-text"; version = "1.1.4.0"; };
      license = "ISC";
      copyright = "Galois Inc, 2023";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "";
      url = "";
      synopsis = "A parameterized named text type and associated functionality.";
      description = "\nA plain String or Text is dangerous because it can be arbitrarily combined,\nconverted, emitted, and updated without consideration of the validity and\napplicability of the contents and the usage scenario.\n\nThis module provides a Named type wrapper around Text which has two\nadditional type parameters: one which indicates what the content of the Text\nrepresents, and one which indicates the style of the name.\n\nThere are additionally functions and classes which allow conversions and\ntransformations between names with different styles and types (or disallow them\nwhere appropriate).\n\nThe core intent of this library is that the Named is used instead of a raw\nString or Text to provide type-level tracking and safety.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."sayable" or (errorHandler.buildDepError "sayable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (flags.with-json) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"));
        buildable = true;
      };
      tests = {
        "namedTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."named-text" or (errorHandler.buildDepError "named-text"))
            (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."sayable" or (errorHandler.buildDepError "sayable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-checklist" or (errorHandler.buildDepError "tasty-checklist"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ pkgs.lib.optionals (flags.with-json) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }