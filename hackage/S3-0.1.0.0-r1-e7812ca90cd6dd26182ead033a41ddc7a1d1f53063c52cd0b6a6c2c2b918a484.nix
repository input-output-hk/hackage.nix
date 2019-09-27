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
      identifier = { name = "S3"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Library for accessing S3 compatible storage services";
      description = "This library provides a lightweight API for interacting with storage services compatible with Amazon's <https://en.wikipedia.org/wiki/Amazon_S3 Simple Storage Service> or S3 protocol.\n\nThe current version of this library provides support for\n\n* Creating, listing, and deleting buckets\n* Creating, copying, listing, and deleting objects\n* Conditionally (i.e. via @if-match@/@if-none-match@) creating, listing, and deleting objects\n* Setting canned ACLs on bucket and object creation\n* AWS Signature protocols version 2 and version 4\n\nSee the \"Network.S3\" module for documentation and usage examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Prelude" or (buildDepError "Prelude"))
          (hsPkgs."X" or (buildDepError "X"))
          (hsPkgs."base-encoding" or (buildDepError "base-encoding"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."http-io-streams" or (buildDepError "http-io-streams"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            ]);
        buildable = true;
        };
      };
    }