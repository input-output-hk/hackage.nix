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
          (hsPkgs."Prelude" or (errorHandler.buildDepError "Prelude"))
          (hsPkgs."X" or (errorHandler.buildDepError "X"))
          (hsPkgs."base-encoding" or (errorHandler.buildDepError "base-encoding"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."http-io-streams" or (errorHandler.buildDepError "http-io-streams"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            ]);
        buildable = true;
        };
      };
    }