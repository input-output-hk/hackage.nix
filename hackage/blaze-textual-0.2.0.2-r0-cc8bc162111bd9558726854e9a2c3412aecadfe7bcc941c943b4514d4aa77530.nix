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
    flags = { developer = false; native = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "blaze-textual"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/mailrank/blaze-textual";
      url = "";
      synopsis = "Fast rendering of common datatypes";
      description = "A library for efficiently rendering Haskell datatypes to\nbytestrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.native) (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.11") (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9" && (compiler.isGhc && (compiler.version).lt "6.11")) (hsPkgs."integer" or (errorHandler.buildDepError "integer"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }