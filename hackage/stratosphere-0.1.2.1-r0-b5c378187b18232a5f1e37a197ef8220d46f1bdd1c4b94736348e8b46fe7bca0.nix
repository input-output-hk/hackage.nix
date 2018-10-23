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
        name = "stratosphere";
        version = "0.1.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "https://github.com/frontrowed/stratosphere#readme";
      url = "";
      synopsis = "EDSL for AWS CloudFormation";
      description = "EDSL for AWS CloudFormation";
      buildType = "Simple";
    };
    components = {
      "stratosphere" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "auto-scaling-group" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.stratosphere)
          ];
        };
        "ec2-with-eip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.stratosphere)
          ];
        };
        "rds-master-replica" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.stratosphere)
          ];
        };
      };
      tests = {
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hlint)
          ];
        };
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.base)
            (hsPkgs.stratosphere)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }