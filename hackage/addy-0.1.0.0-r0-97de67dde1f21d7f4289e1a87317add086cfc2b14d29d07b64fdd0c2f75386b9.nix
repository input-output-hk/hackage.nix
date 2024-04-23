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
      specVersion = "2.2";
      identifier = { name = "addy"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2019-2020 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/addy";
      url = "";
      synopsis = "A full-featured library for parsing, validating, and rendering email addresses";
      description = "A modern library for working with email addresses.  This package can\nbe used to validate user input or handle various flavors of\naddresses that appear in places such as mail messages.\n\nEmail addresses can be decoded, manipulated, then rendered back to\ntext using the simple @local-part\\@domain@ format or the more\ncomplete syntax that allows for display names and comments.\n\nComprehensive documentation can be found in the \"Addy\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
            (hsPkgs."addy" or (errorHandler.buildDepError "addy"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }