{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      normalize-signature-v4-date = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "aws-general";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "https://github.com/alephcloud/hs-aws-general";
      url = "";
      synopsis = "Bindings for AWS General API Version 0.1";
      description = "Bindings for AWS General API including AWS Signature V4.\n\n/API Version: 1.0/\n\n<http://docs.aws.amazon.com/general/latest/gr/>";
      buildType = "Simple";
    };
    components = {
      "aws-general" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.old-locale)
          (hsPkgs.parsers)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "signature-v4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aws)
            (hsPkgs.aws-general)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.parsers)
            (hsPkgs.charset)
            (hsPkgs.errors)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.attoparsec)
            (hsPkgs.http-types)
            (hsPkgs.case-insensitive)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }