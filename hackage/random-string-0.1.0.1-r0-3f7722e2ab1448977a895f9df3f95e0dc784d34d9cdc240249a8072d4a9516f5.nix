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
      identifier = { name = "random-string"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Galois 2018";
      maintainer = "tommd@galois.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Generate a random base 16, 58, or 64 string";
      description = "Uses the fastest strong random available for a random\nstring of the given base and length (in bytes of entropy).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
        ];
        buildable = true;
      };
    };
  }