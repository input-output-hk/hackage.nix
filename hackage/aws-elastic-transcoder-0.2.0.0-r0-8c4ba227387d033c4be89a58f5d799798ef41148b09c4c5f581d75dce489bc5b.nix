{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "aws-elastic-transcoder";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan";
      maintainer = "chris.dornan@irisconnect.com";
      author = "Chris Dornan";
      homepage = "http://github.com/iconnect/aws-elastic-transcoder";
      url = "";
      synopsis = "Haskell suite for the Elastic Transcoder service";
      description = "This suite extends the aws suite for the Amazon Web Services (AWS) to interface the AWS Elastic Transcoder service for transcoding video.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aws)
          (hsPkgs.aws-sign4)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.regex-compat)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "SubmitETS" = {
          depends = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.aws)
            (hsPkgs.aws-elastic-transcoder)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "ets-json" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.safe)
            (hsPkgs.text)
          ];
        };
      };
    };
  }