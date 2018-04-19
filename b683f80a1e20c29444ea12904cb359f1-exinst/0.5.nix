{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      aeson = true;
      bytes = true;
      binary = true;
      cereal = true;
      deepseq = true;
      hashable = true;
      quickcheck = true;
      serialise = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "exinst";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2015-2018";
        maintainer = "renzoλcarbonara.com.ar";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/exinst";
        url = "";
        synopsis = "Dependent pairs and their instances.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exinst = {
          depends  = ((((((([
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.profunctors
            hsPkgs.singletons
          ] ++ pkgs.lib.optional _flags.aeson hsPkgs.aeson) ++ pkgs.lib.optional (_flags.binary || _flags.bytes) hsPkgs.binary) ++ pkgs.lib.optional _flags.bytes hsPkgs.bytes) ++ pkgs.lib.optional (_flags.cereal || _flags.bytes) hsPkgs.cereal) ++ pkgs.lib.optional _flags.deepseq hsPkgs.deepseq) ++ pkgs.lib.optional _flags.hashable hsPkgs.hashable) ++ pkgs.lib.optional _flags.quickcheck hsPkgs.QuickCheck) ++ pkgs.lib.optionals _flags.serialise [
            hsPkgs.cborg
            hsPkgs.serialise
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytes
              hsPkgs.bytestring
              hsPkgs.cborg
              hsPkgs.cereal
              hsPkgs.constraints
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.profunctors
              hsPkgs.QuickCheck
              hsPkgs.serialise
              hsPkgs.singletons
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }