{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vaultaire-common";
        version = "2.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "";
      url = "";
      synopsis = "Common types and instances for Vaultaire";
      description = "Defines a set of types, typeclasses and instances for\nVaultaire, intended for use with Marquise and other\nVaultaire related libraries and executables";
      buildType = "Simple";
    };
    components = {
      "vaultaire-common" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.QuickCheck)
          (hsPkgs.packer)
          (hsPkgs.async)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.hslogger)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.locators)
          (hsPkgs.siphash)
          (hsPkgs.cereal)
        ];
      };
      tests = {
        "wire-formats-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.locators)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.vaultaire-common)
          ];
        };
        "instance-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.vaultaire-common)
          ];
        };
      };
    };
  }