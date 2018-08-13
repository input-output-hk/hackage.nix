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
        name = "aws-simple";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "2016 - 2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/aws-simple#readme";
      url = "";
      synopsis = "Dead simple bindings to commonly used AWS Services";
      description = "Simple bindings to commonly used AWS services";
      buildType = "Simple";
    };
    components = {
      "aws-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.lens)
          (hsPkgs.conduit)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-sqs)
          (hsPkgs.unordered-containers)
          (hsPkgs.timespan)
        ];
      };
    };
  }