{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bluez543 = false;
      hasbluez = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ble";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Julian K. Arni";
      maintainer = "jkarni@turingjump.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/ble#readme";
      url = "";
      synopsis = "Bluetooth Low Energy (BLE) peripherals";
      description = "This package provides a Haskell API for writing Bluetooth Low Energy peripherals.";
      buildType = "Simple";
    };
    components = {
      "ble" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.d-bus)
          (hsPkgs.uuid)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.microlens-ghc)
          (hsPkgs.cereal)
          (hsPkgs.data-default-class)
        ];
      };
      exes = {
        "auth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.d-bus)
            (hsPkgs.uuid)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
          ];
        };
        "counter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.d-bus)
            (hsPkgs.uuid)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.stm)
          ];
        };
        "hrs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.d-bus)
            (hsPkgs.uuid)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.hslogger)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.d-bus)
            (hsPkgs.uuid)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }