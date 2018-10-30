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
        version = "0.6.1";
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
          (hsPkgs.mtl)
          (hsPkgs.objectid)
          (hsPkgs.text)
        ];
      };
      exes = {
        "demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.objectid)
            (hsPkgs.stable-tree)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.objectid)
            (hsPkgs.QuickCheck)
            (hsPkgs.stable-tree)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }