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
        name = "tasty-quickcheck";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "QuickCheck support for the Tasty test framework.";
      description = "QuickCheck support for the Tasty test framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.QuickCheck)
          (hsPkgs.tagged)
          (hsPkgs.random)
        ];
      };
    };
  }