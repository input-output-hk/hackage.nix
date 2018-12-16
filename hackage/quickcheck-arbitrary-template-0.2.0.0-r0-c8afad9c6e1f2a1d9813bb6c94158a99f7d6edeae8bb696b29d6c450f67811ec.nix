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
        name = "quickcheck-arbitrary-template";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Plow Technologies";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme";
      url = "";
      synopsis = "Generate QuickCheck Gen for Sum Types";
      description = "Building Sum Type arbitrary instance is kind of a pain. This tool helps automate the process.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }