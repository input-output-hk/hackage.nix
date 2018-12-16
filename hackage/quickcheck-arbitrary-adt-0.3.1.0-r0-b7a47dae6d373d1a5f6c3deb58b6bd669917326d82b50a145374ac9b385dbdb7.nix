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
        name = "quickcheck-arbitrary-adt";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Plow Technologies";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme";
      url = "";
      synopsis = "Generic typeclasses for generating arbitrary ADTs";
      description = "Improve arbitrary value generation for ADTs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.template-haskell)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }