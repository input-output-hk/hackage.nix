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
      identifier = { name = "xor"; version = "0.0.1.0"; };
      license = "GPL-2.0-or-later";
      copyright = "© 2020  Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Efficient XOR masking";
      description = "This package provides efficient implementations of routines for applying <https://en.wikipedia.org/wiki/Bitwise_operation#XOR bitwise XOR> masks to binary data.\n\nThe currently supported operations (see \"Data.XOR\" API documentation for more details) are applying\n\n* 8-bit  wide XOR masks or\n* 32-bit wide XOR masks\n\nto binary data represented by\n\n* Strict @ByteString@s,\n* Lazy @ByteString@s,\n* @ShortByteString@s (i.e. @ByteArray#@s), or\n* @CStringLen@ (i.e. @Ptr@s).\n\nThe performance is comparable to portable ISO C99 implementations but this library is implemented as pure Haskell and is thereby compatible with compile targets such as <https://github.com/ghcjs/ghcjs GHCJS>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-byteorder" or (errorHandler.buildDepError "ghc-byteorder"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-byteorder" or (errorHandler.buildDepError "ghc-byteorder"))
            (hsPkgs."xor" or (errorHandler.buildDepError "xor"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-byteorder" or (errorHandler.buildDepError "ghc-byteorder"))
            (hsPkgs."xor" or (errorHandler.buildDepError "xor"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }