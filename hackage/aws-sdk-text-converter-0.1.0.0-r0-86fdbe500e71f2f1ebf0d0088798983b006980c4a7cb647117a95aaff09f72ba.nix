{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aws-sdk-text-converter";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusuke Nomura <yunomu@gmail.com>";
      author = "Yusuke Nomura <yunomu@gmail.com>";
      homepage = "https://github.com/worksap-ate/aws-sdk-text-converter";
      url = "";
      synopsis = "The text converter for aws-sdk.";
      description = "The text converter for aws-sdk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.strptime)
          (hsPkgs.safe)
          (hsPkgs.iproute)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.strptime)
            (hsPkgs.safe)
            (hsPkgs.iproute)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }