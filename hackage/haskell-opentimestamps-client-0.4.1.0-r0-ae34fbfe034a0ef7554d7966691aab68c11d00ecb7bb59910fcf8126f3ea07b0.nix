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
      identifier = {
        name = "haskell-opentimestamps-client";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2025 A.H.M. (Mari) Donkers";
      maintainer = "a.h.m.donkers@photonsphere.org";
      author = "A.H.M. (Mari) Donkers";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of a basic OpenTimestamps client";
      description = "Please see the README on Codeberg at <https://codeberg.org/photonsphere/haskell-opentimestamps-client#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-opentimestamps" or (errorHandler.buildDepError "haskell-opentimestamps"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-opentimestamps-client-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."haskell-opentimestamps-client" or (errorHandler.buildDepError "haskell-opentimestamps-client"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }