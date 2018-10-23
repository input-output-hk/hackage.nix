{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "hen";
        version = "0.0.0";
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
      "hen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.uuid)
          (hsPkgs.bitset)
        ];
        libs = [ (pkgs."xenctrl") ];
      };
    };
  }