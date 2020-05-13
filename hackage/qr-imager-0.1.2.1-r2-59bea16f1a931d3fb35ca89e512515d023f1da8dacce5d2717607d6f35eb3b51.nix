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
      specVersion = "1.10";
      identifier = { name = "qr-imager"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/QRImager#readme";
      url = "";
      synopsis = "Library to generate QR codes from bytestrings and objects";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."jose-jwt" or (errorHandler.buildDepError "jose-jwt"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell-qrencode" or (errorHandler.buildDepError "haskell-qrencode"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      exes = {
        "qrpipe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qr-imager" or (errorHandler.buildDepError "qr-imager"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qr-imager" or (errorHandler.buildDepError "qr-imager"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }