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
        name = "hspec-golden-aeson";
        version = "0.3.1.0";
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
      "hspec-golden-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hspec)
          (hsPkgs.random)
          (hsPkgs.quickcheck-arbitrary-adt)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.silently)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }