{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bluez543 = false;
      hasbluez = true;
      hasdbus = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ble";
        version = "0.4.2";
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
      "library" = {
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
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
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
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
          ];
        };
        "hrs-client" = {
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
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
          ];
        };
        "readme" = {
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
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.stm)
            (hsPkgs.markdown-unlit)
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
            (hsPkgs.microlens-ghc)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.ble)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.process)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }