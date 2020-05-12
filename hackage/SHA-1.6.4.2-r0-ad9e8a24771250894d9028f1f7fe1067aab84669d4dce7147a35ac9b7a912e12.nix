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
    flags = { exe = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "SHA"; version = "1.6.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>,\nRaphael Javaux <raphaeljavaux@gmail.com>";
      author = "Adam Wick <awick@galois.com>, Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Implementations of the SHA suite of message digest functions";
      description = "This library implements the SHA suite of message digest functions,\naccording to NIST FIPS 180-2 (with the SHA-224 addendum), as well\nas the SHA-based HMAC routines. The functions have been tested\nagainst most of the NIST and RFC test vectors for the various\nfunctions. While some attention has been paid to performance,\nthese do not presently reach the speed of well-tuned libraries,\nlike OpenSSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "sha1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if !flags.exe then false else true;
          };
        "sha224" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if !flags.exe then false else true;
          };
        "sha256" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if !flags.exe then false else true;
          };
        "sha384" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if !flags.exe then false else true;
          };
        "sha512" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if !flags.exe then false else true;
          };
        };
      tests = {
        "test-sha" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }