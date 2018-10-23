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
        name = "validations";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "http://mavenraven.org";
      maintainer = "developers@mavenraven.org";
      author = "mavenraven.org";
      homepage = "https://github.com/mavenraven/validations";
      url = "";
      synopsis = "A nice way to define field validations in Haskell.";
      description = "See <https://github.com/mavenraven/validations> for description and tutorial.\nCode used in the tutorial can be found in src\\/Validations\\/Tutorial.lhs.";
      buildType = "Simple";
    };
    components = {
      "validations" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "digestive-functors-validations-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.digestive-functors)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }