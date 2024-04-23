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
    flags = { dev = false; benchmark-atto-bencode = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bencoding"; version = "0.4.5.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2018, Sam Truzjan\n(c) 2018 Sergey Vinokurov";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/sergv/bencoding";
      url = "";
      synopsis = "A library for encoding and decoding of BEncode data.";
      description = "A library for fast and easy encoding and decoding of BEncode data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bencoding" or (errorHandler.buildDepError "bencoding"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-comparison" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bencoding" or (errorHandler.buildDepError "bencoding"))
            (hsPkgs."bencode" or (errorHandler.buildDepError "bencode"))
          ] ++ pkgs.lib.optional (flags.benchmark-atto-bencode) (hsPkgs."AttoBencode" or (errorHandler.buildDepError "AttoBencode"));
          buildable = true;
        };
      };
    };
  }