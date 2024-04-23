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
      identifier = { name = "multiaddr"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Micxjo Funkcio";
      maintainer = "Micxjo Funkcio <micxjo@fastmail.com>";
      author = "Micxjo Funkcio <micxjo@fastmail.com>";
      homepage = "http://github.com/micxjo/hs-multiaddr";
      url = "";
      synopsis = "A network address format";
      description = "Multiaddr is a self-describing network address format\nsupporting a variety of protocols, with both string\nand binary representations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "multiaddr-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiaddr" or (errorHandler.buildDepError "multiaddr"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }