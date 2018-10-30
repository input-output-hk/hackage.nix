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
        name = "objectid";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "jay groven";
      homepage = "https://github.com/tsuraan/objectid";
      url = "";
      synopsis = "Rather unique identifier for things that need to be stored";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cryptohash)
        ];
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.cereal)
            (hsPkgs.objectid)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }