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
    flags = { with-time = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "pact-time"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2021 Kadena LLC.";
      maintainer = "lakuhtz@gmail.com";
      author = "Lars Kuhtz";
      homepage = "https://github.com/kadena-io/pact-time";
      url = "";
      synopsis = "Time Library for Pact";
      description = "A minimal time library for usage with the [Pact Smart Contract\nLanguage](https://github.com/kadena-io/pact/).\n\nThe focus of this library is on minimality, performance, and binary level\nstability. Time is represented as 64-bit integral value that counts nominal\nmicro-seconds since the modified Julian date epoch (MJD). The implementation\nignores leap seconds.\n\nWhile the library can parse date-time values with time zones, internally all\ndate-times are represented as UTC and formatting only supports UTC. Only the\ndefault English language locale is supported.\n\nDetails about supported formats can be found in the [Pact Language\nReference](https://pact-language.readthedocs.io/en/stable/pact-reference.html#time-formats).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ] ++ (if flags.with-time
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."pact-time" or (errorHandler.buildDepError "pact-time"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }