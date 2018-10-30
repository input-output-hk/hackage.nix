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
      specVersion = "1.8";
      identifier = {
        name = "ec2-signature";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusuke Nomura<yunomu@gmail.com>";
      author = "Yusuke Nomura<yunomu@gmail.com>";
      homepage = "https://github.com/worksap-ate/ec2-signature";
      url = "";
      synopsis = "The Amazon EC2 style signature calculator.";
      description = "The Amazon EC2 style signature calculator.\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-2.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.SHA)
          (hsPkgs.http-types)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.SHA)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }