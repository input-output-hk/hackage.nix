{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "typesafe-endian";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 John Ericson <Ericson2314@Yahoo.com>";
        maintainer = "John Ericson <Ericson2314@Yahoo.com>";
        author = "John Ericson <Ericson2314@Yahoo.com>";
        homepage = "https://github.com/Ericson2314/typesafe-endian";
        url = "";
        synopsis = "Enforce endianness with types";
        description = "This package provides newtype wrappers for separating data with specified\nendianness from other data of the same type with normal, system-specific\nendianness. Since these wrappers are newtypes, no runtime overhead is\nincurred.\nCurrently the underlying 'EndianSensitive' typeclass its instances are taken\ndirectly from the 'data-endian' package. However, if Haskell or GHC ever gets\na built-in equivalent, like as is proposed in\n'http://ghc.haskell.org/trac/ghc/ticket/7902', it should be trivial to update\nthis to use that instead.";
        buildType = "Simple";
      };
      components = {
        "typesafe-endian" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }