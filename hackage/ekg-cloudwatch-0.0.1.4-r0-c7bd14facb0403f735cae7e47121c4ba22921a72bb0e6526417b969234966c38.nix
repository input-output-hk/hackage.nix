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
        name = "ekg-cloudwatch";
        version = "0.0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Seller Labs";
      maintainer = "matt@sellerlabs.com";
      author = "Matt Parsons";
      homepage = "https://github.com/sellerlabs/ekg-cloudwatch#readme";
      url = "";
      synopsis = "An ekg backend for Amazon Cloudwatch";
      description = "Push ekg metrics to Amazon Cloudwatch";
      buildType = "Simple";
    };
    components = {
      "ekg-cloudwatch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ekg-core)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-cloudwatch)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "ekg-cloudwatch-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ekg-core)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-cloudwatch)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.base)
            (hsPkgs.ekg-cloudwatch)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }