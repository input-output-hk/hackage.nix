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
    flags = { test-doctests = false; warnmore = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "assumpta-core"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "2020 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/assumpta-core#readme";
      url = "";
      synopsis = "Core functionality for an SMTP client";
      description = "A library for constructing SMTP clients, which provides the\ncore functionality for\n<https://hackage.haskell.org/package/assumpta assumpta>. It\nprovides a monad transformer and an mtl-style class for sending\nSMTP commands (including `STARTTLS`) to a server and checking\nfor expected responses, over some abstract connection type.\n\nIt does not provide a concrete implementation\nwhich can actually be used to communicate over\na network - for that, see the\n<https://hackage.haskell.org/package/assumpta assumpta>\npackage.\n\nFor further details, please see the README on GitHub at\n<https://github.com/phlummox/assumpta-core#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "doctest-tests" = {
          depends = pkgs.lib.optionals (!!flags.test-doctests) [
            (hsPkgs."assumpta-core" or (errorHandler.buildDepError "assumpta-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.test-doctests then false else true;
        };
        "hspec-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."assumpta-core" or (errorHandler.buildDepError "assumpta-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }