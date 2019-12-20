let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ipfs"; version = "1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "© 2019 Fission Internet Software Services for Open Networks Inc.";
      maintainer = "brooklyn@fission.codes,\ndaniel@fission.codes,\nben@fission.codes";
      author = "Brooklyn Zelenka,\nDaniel Holmgren,\nBen Church";
      homepage = "https://github.com/fission-suite/ipfs-haskell#readme";
      url = "";
      synopsis = "Access IPFS locally and remotely";
      description = "Interact with the IPFS network by shelling out to a local IPFS node or communicating via the HTTP interface of a remote IPFS node.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-has" or (buildDepError "data-has"))
          (hsPkgs."envy" or (buildDepError "envy"))
          (hsPkgs."flow" or (buildDepError "flow"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."ip" or (buildDepError "ip"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (buildDepError "servant-client-core"))
          (hsPkgs."servant-multipart" or (buildDepError "servant-multipart"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "fission-doctest" = {
          depends = [
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-has" or (buildDepError "data-has"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."envy" or (buildDepError "envy"))
            (hsPkgs."flow" or (buildDepError "flow"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (buildDepError "servant-client-core"))
            (hsPkgs."servant-multipart" or (buildDepError "servant-multipart"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."swagger2" or (buildDepError "swagger2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }