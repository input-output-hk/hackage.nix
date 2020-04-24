{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."Prelude" or ((hsPkgs.pkgs-errors).buildDepError "Prelude"))
          (hsPkgs."X" or ((hsPkgs.pkgs-errors).buildDepError "X"))
          (hsPkgs."base-encoding" or ((hsPkgs.pkgs-errors).buildDepError "base-encoding"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."http-io-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-io-streams"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
            ]);
        buildable = true;
        };
      };
    }