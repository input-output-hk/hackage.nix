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
      specVersion = "2.0";
      identifier = { name = "passman-core"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matthew Harm Bekkema";
      maintainer = "mbekkema97@gmail.com";
      author = "Matthew Harm Bekkema";
      homepage = "https://github.com/PasswordManager/passman-core#readme";
      url = "";
      synopsis = "Deterministic password generator core";
      description = "Generates unique passwords deterministically from a single master password.\nA hash of the master password is stored on disk to prevent accidentally\ngenerating a password from a mistyped master password.\n\nThis is the core of passman.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."passman-core-internal" or (buildDepError "passman-core-internal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
          (hsPkgs."csv-conduit" or (buildDepError "csv-conduit"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."int-cast" or (buildDepError "int-cast"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      sublibs = {
        "passman-core-internal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."int-cast" or (buildDepError "int-cast"))
            ];
          };
        };
      tests = {
        "precomputed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."passman-core" or (buildDepError "passman-core"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."passman-core" or (buildDepError "passman-core"))
            (hsPkgs."passman-core-internal" or (buildDepError "passman-core-internal"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-unicode" or (buildDepError "quickcheck-unicode"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      };
    }