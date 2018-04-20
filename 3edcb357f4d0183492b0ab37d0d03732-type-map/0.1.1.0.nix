{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-map";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2017 Li-yao Xia";
        maintainer = "lysxia@gmail.com";
        author = "Li-yao Xia";
        homepage = "https://github.com/Lysxia/type-map";
        url = "";
        synopsis = "Type-indexed maps";
        description = "Maps where keys are types and values can have types depending on their keys.\n\n* \"Data.TypeMap.Dynamic\": Simple maps using the 'Typeable' mechanism,\ntracking keys at run time.\n\"Data.TypeMap.Dynamic.Alt\" is an alternative API based on type applications\nrather than passing proxies, available from GHC 8.0.1.\n\n* \"Data.TypeMap.Vector\": Only available from GHC 8.0.1. Maps whose domains\nare given in their types for compile-time verification and fast indexing.\nTwo more variants with the same API: \"Data.TypeMap.List\" uses lists and\n\"Data.TypeMap.Map\" uses maps (from 'containers'), trading indexing speed\nfor more efficient creation and modification. \"Data.TypeMap.Static\"\nexports some operations on type lists.";
        buildType = "Simple";
      };
      components = {
        type-map = {
          depends  = [
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.vector;
        };
        tests = {
          type-map-test = {
            depends  = pkgs.lib.optionals compiler.isGhc [
              hsPkgs.base
              hsPkgs.type-map
            ];
          };
          type-map-static-test = {
            depends  = pkgs.lib.optionals compiler.isGhc [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-map
            ];
          };
        };
      };
    }