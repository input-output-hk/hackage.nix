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
      example-invalid = false;
      example-mkvalid = false;
      example-prompt = false;
      example-uname = false;
      example-valid = false;
      examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "ttc"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2019 Travis Cardwell";
      maintainer = "Travis Cardwell <travis.cardwell@extrema.is>";
      author = "Travis Cardwell <travis.cardwell@extrema.is>";
      homepage = "https://github.com/ExtremaIS/ttc-haskell#readme";
      url = "";
      synopsis = "Textual Type Classes";
      description = "This library provides type classes for conversion between data types and\ntextual data types (strings).  Please see the README on GitHub at\n<https://github.com/ExtremaIS/ttc-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "example-invalid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = if flags.example-invalid then true else false;
        };
        "example-mkvalid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = if flags.examples || flags.example-mkvalid
            then true
            else false;
        };
        "example-prompt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = if flags.examples || flags.example-prompt
            then true
            else false;
        };
        "example-uname" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = if flags.examples || flags.example-uname
            then true
            else false;
        };
        "example-valid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = if flags.examples || flags.example-valid
            then true
            else false;
        };
      };
      tests = {
        "ttc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = true;
        };
      };
    };
  }