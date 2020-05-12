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
      specVersion = "0";
      identifier = { name = "OpenAFP-Utils"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Assorted utilities to work with AFP data streams";
      description = "Assorted utilities to work with AFP data streams";
      buildType = "Simple";
      };
    components = {
      exes = {
        "afp-dump" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."uconv" or (errorHandler.buildDepError "uconv"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = true;
          };
        "afp-page" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-replace" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-scanudc" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "afp-split" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-split-scb" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-split-tcb" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "afp-type" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-udcfix" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        "afp-validate" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp2line" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-olndump" = {
          depends = [
            (hsPkgs."OpenAFP" or (errorHandler.buildDepError "OpenAFP"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      };
    }