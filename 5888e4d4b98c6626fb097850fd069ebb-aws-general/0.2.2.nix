{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      normalize-signature-v4-date = true;
      old-locale = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "aws-general";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014-2015 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "https://github.com/alephcloud/hs-aws-general";
      url = "";
      synopsis = "Bindings for Amazon Web Services (AWS) General Reference";
      description = "Bindings for Amazon Web Services (AWS) General Reference including AWS Signature V4.\n\n/API Version: 1.0/\n\n<http://docs.aws.amazon.com/general/latest/gr/>";
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
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.parsers)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if _flags.old-locale
          then [
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [ (hsPkgs.time) ]);
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