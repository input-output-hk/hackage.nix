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
        name = "aws-sdk-xml-unordered";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
      author = "Shohei Yasutake <amutake.s@gmail.com>";
      homepage = "https://github.com/worksap-ate/aws-sdk-xml-unordered";
      url = "";
      synopsis = "The xml parser for aws-sdk";
      description = "This package provides the unordered xml parser for aws-sdk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.conduit)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.aws-sdk-text-converter)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.conduit)
            (hsPkgs.xml-conduit)
            (hsPkgs.aws-sdk-xml-unordered)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }