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
      identifier = { name = "checksum"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/checksum";
      url = "";
      synopsis = "Compute and verify checksums of ISBN, IBAN, etc.";
      description = "Compute and verify checksums of various identifiers,\nsuch as IBAN, ISBN, EAN, Germany's Citizen Card.\n\nRelated package: @isbn@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }