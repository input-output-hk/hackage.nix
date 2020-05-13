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
    flags = { usepkgconfig = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "nettle"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Stefan Bühler <stbuehler@web.de>";
      maintainer = "Stefan Bühler <stbuehler@web.de>";
      author = "Stefan Bühler <stbuehler@web.de>";
      homepage = "https://github.com/stbuehler/haskell-nettle";
      url = "";
      synopsis = "safe nettle binding";
      description = "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.\nTested with nettle-2.7.1, might work with 2.5, does NOT WORK with 3.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          ];
        libs = (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."nettle" or (errorHandler.sysDepError "nettle"));
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."nettle" or (errorHandler.pkgConfDepError "nettle"));
        buildable = true;
        };
      tests = {
        "test-ciphers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-tests" or (errorHandler.buildDepError "crypto-cipher-tests"))
            (hsPkgs."nettle" or (errorHandler.buildDepError "nettle"))
            ];
          buildable = true;
          };
        "test-hashes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."nettle" or (errorHandler.buildDepError "nettle"))
            ];
          buildable = true;
          };
        "test-hmac" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."nettle" or (errorHandler.buildDepError "nettle"))
            ];
          buildable = true;
          };
        "test-umac" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."nettle" or (errorHandler.buildDepError "nettle"))
            ];
          buildable = true;
          };
        };
      };
    }