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
        name = "stable-tree";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "jay groven";
      homepage = "https://github.com/tsuraan/stable-tree";
      url = "";
      synopsis = "Trees whose branches are resistant to change";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      exes = {
        "demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stable-tree)
          ];
        };
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.stable-tree)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }