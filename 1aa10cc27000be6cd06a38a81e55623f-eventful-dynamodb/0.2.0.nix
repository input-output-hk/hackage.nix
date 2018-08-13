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
        name = "eventful-dynamodb";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "https://github.com/jdreaver/eventful#readme";
      url = "";
      synopsis = "Library for eventful DynamoDB event stores";
      description = "Library for eventful DynamoDB event stores";
      buildType = "Simple";
    };
    components = {
      "eventful-dynamodb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.eventful-core)
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-dynamodb)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.lens)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.eventful-core)
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-dynamodb)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.lens)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.eventful-test-helpers)
          ];
        };
      };
    };
  }