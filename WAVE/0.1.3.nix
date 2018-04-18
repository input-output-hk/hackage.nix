{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wave";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/wave";
        url = "";
        synopsis = "Work with WAVE and RF64 files";
        description = "Work with WAVE and RF64 files.";
        buildType = "Simple";
      };
      components = {
        wave = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.hspec
              hsPkgs.temporary
              hsPkgs.wave
            ];
          };
        };
      };
    }