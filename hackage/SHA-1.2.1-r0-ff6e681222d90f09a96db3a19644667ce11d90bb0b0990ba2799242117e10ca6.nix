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
    flags = { test = false; exe = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "SHA"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Implementations of the SHA suite of message digest functions";
      description = "This library implements the SHA suite of message digest functions,\naccording to NIST FIPS 180-2 (with the SHA-224 addendum). The\nfunctions have been tested against most of the NIST test vectors\nfor the various functions. While some attention has been paid to\nperformance, these do not presently reach the speed of\nwell-tuned libraries, like OpenSSL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      exes = {
        "test_sha" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ pkgs.lib.optional (!!flags.test) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = if !flags.test then false else true;
        };
        "sha1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ pkgs.lib.optional (!!flags.exe) (hsPkgs."directory" or (errorHandler.buildDepError "directory"));
          buildable = if !flags.exe then false else true;
        };
        "sha384" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ pkgs.lib.optional (!!flags.exe) (hsPkgs."directory" or (errorHandler.buildDepError "directory"));
          buildable = if !flags.exe then false else true;
        };
      };
    };
  }