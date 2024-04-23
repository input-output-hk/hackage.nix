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
    flags = { old-crypto-api = false; conduit11 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-conduit"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/prowdsponsor/crypto-conduit";
      url = "";
      synopsis = "Conduit interface for cryptographic operations (from crypto-api).";
      description = "This package contains everything that you need to use a\ncryptographic package that supports the @crypto-api@ package\nusing conduits from the @conduit@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
        ] ++ pkgs.lib.optional (flags.conduit11) (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))) ++ [
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
        ];
        buildable = true;
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
            (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
            (hsPkgs."skein" or (errorHandler.buildDepError "skein"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."crypto-conduit" or (errorHandler.buildDepError "crypto-conduit"))
          ] ++ pkgs.lib.optional (flags.conduit11) (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"));
          buildable = true;
        };
      };
    };
  }