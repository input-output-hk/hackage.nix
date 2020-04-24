{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "s3-signer"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2014-2018";
      maintainer = "David Johnson <djohnson.m@gmail.com>";
      author = "David Johnson <djohnson.m@gmail.com>, William Casarin <jb55@jb55.com>";
      homepage = "https://github.com/dmjio/s3-signer";
      url = "";
      synopsis = "Pre-signed Amazon S3 URLs";
      description = "\ns3-signer creates cryptographically secure Amazon S3 URLs that expire within a user-defined\nperiod. It allows uploading and downloading of content from Amazon S3.\nIdeal for AJAX direct-to-s3 uploads via CORS and secure downloads.\nWeb framework agnostic with minimal dependencies.\n\n> module Main where\n> import           Network.S3\n> main :: IO ()\n> main = print =<< generateS3URL credentials request\n>   where\n>     credentials = S3Keys \"<public-key-goes-here>\" \"<secret-key-goes-here>\"\n>     request     = S3Request S3GET \"application/extension\" \"bucket-name\" \"file-name.extension\" 3 -- three seconds until expiration\n\nResult\n\n> S3URL \"https://bucket-name.s3.amazonaws.com/file-name.extension?AWSAccessKeyId=<public-key-goes-here>&Expires=1402346638&Signature=1XraY%2Bhp117I5CTKNKPc6%2BiihRA%3D\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-simple" = {
          depends = [
            (hsPkgs."internal" or ((hsPkgs.pkgs-errors).buildDepError "internal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }