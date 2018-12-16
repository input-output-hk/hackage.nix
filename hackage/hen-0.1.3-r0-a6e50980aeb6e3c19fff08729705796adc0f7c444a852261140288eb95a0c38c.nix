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
      specVersion = "1.12";
      identifier = {
        name = "hen";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "Selectel";
      maintainer = "Fedor Gogolev <knsd@knsd.net>";
      author = "Fedor Gogolev <knsd@knsd.net>\nSergei Lebedev <superbobry@gmail.com>";
      homepage = "https://github.com/selectel/hen";
      url = "";
      synopsis = "Haskell bindings to Xen hypervisor interface";
      description = "Haskell bindings to Xen hypervisor interface";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.uuid)
          (hsPkgs.bitset)
        ];
        libs = [ (pkgs."xenctrl") ];
      };
      tests = {
        "hen-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.exceptions)
            (hsPkgs.uuid)
            (hsPkgs.bitset)
            (hsPkgs.hen)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }