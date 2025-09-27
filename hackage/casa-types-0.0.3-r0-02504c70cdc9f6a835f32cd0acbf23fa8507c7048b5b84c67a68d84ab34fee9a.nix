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
      specVersion = "1.12";
      identifier = { name = "casa-types"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete,\n2024-2025 Haskell Foundation";
      maintainer = "Chris Done <chrisdone@fpcomplete.com>,\nMike Pilgrem <public@pilgrem.com>";
      author = "Chris Done";
      homepage = "https://github.com/commercialhaskell/casa#readme";
      url = "";
      synopsis = "Types for Casa";
      description = "Types for Casa (Content-Addressable Storage Archive). See\n<https://casa.stackage.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }