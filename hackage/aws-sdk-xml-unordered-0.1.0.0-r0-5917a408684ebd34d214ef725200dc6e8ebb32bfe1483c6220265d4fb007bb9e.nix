{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-sdk-xml-unordered"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amutake.s@gmail.com";
      author = "Shohei Yasutake";
      homepage = "";
      url = "";
      synopsis = "XML parser for aws-sdk";
      description = "This package provides a unordered xml parser for aws-sdk.";
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
            (hsPkgs.mtl)
            (hsPkgs.conduit)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            (hsPkgs.aws-sdk-text-converter)
            (hsPkgs.aws-sdk-xml-unordered)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }