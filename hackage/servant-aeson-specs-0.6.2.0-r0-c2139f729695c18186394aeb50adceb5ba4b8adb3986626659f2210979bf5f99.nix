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
        name = "servant-aeson-specs";
        version = "0.6.2.0";
      };
      license = "MIT";
      copyright = "Plow Technologies";
      maintainer = "soenkehahn@gmail.com, mchaver@gmail.com";
      author = "Sönke Hahn, James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/servant-aeson-specs#readme";
      url = "";
      synopsis = "generic tests for aeson serialization in servant";
      description = "tests for aeson serialization in servant";
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
          (hsPkgs.hspec-golden-aeson)
          (hsPkgs.quickcheck-arbitrary-adt)
          (hsPkgs.random)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.mockery)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.servant)
            (hsPkgs.silently)
            (hsPkgs.string-conversions)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
      };
    };
  }