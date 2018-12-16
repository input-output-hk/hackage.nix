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
      specVersion = "1.8";
      identifier = {
        name = "hedgehog-quickcheck";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "https://hedgehog.qa";
      url = "";
      synopsis = "Use QuickCheck generators in Hedgehog and vice versa.";
      description = "Use QuickCheck generators in Hedgehog and vice versa.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
        ];
      };
    };
  }