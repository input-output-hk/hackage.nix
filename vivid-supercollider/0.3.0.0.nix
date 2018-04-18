{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vivid-supercollider";
          version = "0.3.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Tom Murphy";
        author = "Tom Murphy";
        homepage = "";
        url = "";
        synopsis = "Implementation of SuperCollider server specifications";
        description = "An interface-agnostic implementation of specs for\nSuperCollider server types and commands.\n- Server Command Reference\n- Synth Definition File Format\n\nNote this is an in-progress (incomplete) implementation. Currently only the\nserver commands needed for the \\\"vivid\\\" package are supported.";
        buildType = "Simple";
      };
      components = {
        vivid-supercollider = {
          depends  = [
            hsPkgs.base
            hsPkgs.vivid-osc
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.split
            hsPkgs.cereal
          ];
        };
        tests = {
          vivid-sc-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.vivid-supercollider
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.microspec
              hsPkgs.QuickCheck
              hsPkgs.utf8-string
              hsPkgs.vivid-osc
            ];
          };
        };
      };
    }