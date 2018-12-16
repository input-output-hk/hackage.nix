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
        name = "hspec-golden-aeson";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Plow Technologies";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/hspec-golden-aeson#readme";
      url = "";
      synopsis = "Use tests to monitor changes in Aeson serialization";
      description = "Use tests to monitor changes in Aeson serialization";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hspec)
          (hsPkgs.quickcheck-arbitrary-adt)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.silently)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }