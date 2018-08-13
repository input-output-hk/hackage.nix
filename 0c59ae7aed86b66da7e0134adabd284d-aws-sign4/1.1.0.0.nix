{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aws-sign4";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Iris Connect Ltd";
      maintainer = "chris.dornan@irisconnect.com";
      author = "Chris Dornan";
      homepage = "http://github.com/iconnect/aws-sign4";
      url = "";
      synopsis = "Amazon Web Services (AWS) Signature v4 HTTP request signer";
      description = "Functions to sign AWS requests with the AWS Signature-V4 protocol (required for the Elastic Transcoder service)";
      buildType = "Simple";
    };
    components = {
      "aws-sign4" = {
        depends  = [
          (hsPkgs.aws)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.http-types)
          (hsPkgs.old-locale)
          (hsPkgs.safe)
          (hsPkgs.time)
        ];
      };
      tests = {
        "ets-sign4" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.aws)
            (hsPkgs.attempt)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.case-insensitive)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.old-locale)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }