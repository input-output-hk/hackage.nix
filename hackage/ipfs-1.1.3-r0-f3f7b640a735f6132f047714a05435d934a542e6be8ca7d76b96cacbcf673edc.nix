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
      specVersion = "2.2";
      identifier = { name = "ipfs"; version = "1.1.3"; };
      license = "AGPL-3.0-or-later";
      copyright = "© 2020 Fission Internet Software Services for Open Networks Inc.";
      maintainer = "brooklyn@fission.codes,\ndaniel@fission.codes,\nsteven@fission.codes";
      author = "Brooklyn Zelenka,\nDaniel Holmgren,\nSteven Vandevelde";
      homepage = "https://github.com/fission-suite/ipfs-haskell#readme";
      url = "";
      synopsis = "Access IPFS locally and remotely";
      description = "Interact with the IPFS network by shelling out to a local IPFS node or communicating via the HTTP interface of a remote IPFS node.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
          (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "fission-doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }