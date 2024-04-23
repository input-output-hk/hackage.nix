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
      specVersion = "1.12";
      identifier = { name = "char-decode"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Automattic, Inc.";
      maintainer = "nathan.bloomfield@automattic.com";
      author = "Nathan Bloomfield";
      homepage = "https://github.com/nbloomf/char-decode#readme";
      url = "";
      synopsis = "Convert legacy byte encodings to and from Unicode";
      description = "Provides simple functions @Word8 -> Char@ and\n@Char -> Either Char Word8@ for converting from\nlegacy character encodings to Unicode and back.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "char-decode-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."char-decode" or (errorHandler.buildDepError "char-decode"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }