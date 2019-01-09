{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "s3-signer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 David Johnson";
      maintainer = "David Johnson <djohnson.m@gmail.com>";
      author = "David Johnson <djohnson.m@gmail.com>";
      homepage = "https://github.com/dmjio/s3-signer";
      url = "";
      synopsis = "Pre-signed Amazon S3 URLs";
      description = "\ns3-signer creates cryptographically secure Amazon S3 URLs that expire within a user-defined\nperiod. It allows uploading and downloading of content from Amazon S3.\nIdeal for AJAX direct-to-s3 uploads via CORS and secure downloads.\nWeb framework agnostic with minimal dependencies.\n\n> module Main where\n> import           Network.S3\n> main :: IO ()\n> main = print =<< generateS3URL credentials request\n>   where\n>     credentials = S3Creds \"<public-key-goes-here>\" \"<secret-key-goes-here>\"\n>     request     = S3Request S3GET \"bucket-name\" \"file-name.extension\" 3 -- three seconds until expiration\n\nResult\n\n> S3URL \"https://bucket-name.s3.amazonaws.com/file-name.extension?AWSAccessKeyId=<public-key-goes-here>&Expires=1402346638&Signature=1XraY%2Bhp117I5CTKNKPc6%2BiihRA%3D\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.http-types)
          (hsPkgs.cryptohash)
          (hsPkgs.time)
          ];
        };
      };
    }