{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hdf5-lite";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/hdf5-lite";
      url = "";
      synopsis = "Bindings to the HDF5 \"lite\" interface";
      description = "This library wraps the simplified (\"lite\") interface to the HDF5 data format.";
      buildType = "Simple";
    };
    components = {
      "hdf5-lite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.ghc-prim)
          (hsPkgs.inline-c)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hdf5-lite)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }