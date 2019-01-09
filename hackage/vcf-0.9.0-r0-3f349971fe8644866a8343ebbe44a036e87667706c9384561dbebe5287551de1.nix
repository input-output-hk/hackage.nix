{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vcf"; version = "0.9.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "juantotish1@hotmail.com";
      author = "Juan Paucar";
      homepage = "";
      url = "";
      synopsis = "A package to parse VCF files inspired in similar python libraries";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.vcf)
            ];
          };
        };
      };
    }