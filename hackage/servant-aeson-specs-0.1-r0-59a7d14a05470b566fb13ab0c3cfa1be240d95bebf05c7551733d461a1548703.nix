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
        name = "servant-aeson-specs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "https://github.com/plow-technologies/servant-aeson-specs#readme";
      url = "";
      synopsis = "generic tests for aeson serialization in servant";
      description = "tests for aeson serialization in servant";
      buildType = "Simple";
    };
    components = {
      "servant-aeson-specs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.hspec-core)
            (hsPkgs.temporary)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }