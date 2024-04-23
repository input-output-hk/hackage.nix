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
      specVersion = "3.0";
      identifier = { name = "sel"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "The Haskell Cryptography contributors";
      author = "Hécate Moonlight, Koz Ross";
      homepage = "https://github.com/haskell-cryptography/libsodium-bindings";
      url = "";
      synopsis = "Cryptography for the casual user";
      description = "The high-level library aimed at casual users of cryptography, by the Haskell Cryptography Group";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."libsodium-bindings" or (errorHandler.buildDepError "libsodium-bindings"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
        ];
        buildable = true;
      };
      tests = {
        "sel-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."libsodium-bindings" or (errorHandler.buildDepError "libsodium-bindings"))
            (hsPkgs."sel" or (errorHandler.buildDepError "sel"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
          ];
          buildable = true;
        };
      };
    };
  }