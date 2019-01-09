{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-kms"; version = "0.0.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Key Management Service SDK.";
      description = "Amazon Key Management Service (KMS) is a managed service that makes it easy\nfor you to create and control the encryption keys used to encrypt your data,\nand uses Hardware Security Modules (HSMs) to protect the security of your\nkeys. Amazon Key Management Service is integrated with other Amazon services\nincluding Amazon EBS, Amazon S3, and Amazon Redshift. Amazon Key Management\nService is also integrated with Amazon CloudTrail to provide you with logs of\nall key usage to help meet your regulatory and compliance needs.\n\n/See:/ <http://docs.aws.amazon.com/kms/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }