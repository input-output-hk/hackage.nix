{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-s3";
        version = "1.3.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Storage Service SDK.";
      description = "Amazon Simple Storage Service is storage for the Internet. Amazon S3 has\na simple web services interface that you can use to store and retrieve\nany amount of data, at any time, from anywhere on the web. It gives any\ndeveloper access to the same highly scalable, reliable, fast,\ninexpensive data storage infrastructure that Amazon uses to run its own\nglobal network of web sites. The service aims to maximize benefits of\nscale and to pass those benefits on to developers.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.S3\" and the <http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-s3" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.text)
        ];
      };
      tests = {
        "amazonka-s3-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-s3)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }