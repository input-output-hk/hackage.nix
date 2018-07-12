{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dsc";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Kenny Shen <kenny@machinesung.com>";
        author = "";
        homepage = "https://github.com/qoelet/storeviva-login#readme";
        url = "";
        synopsis = "Helper functions for setting up Double Submit Cookie defense for forms";
        description = "See README at <https://github.com/qoelet/dsc#readme>";
        buildType = "Simple";
      };
      components = {
        "dsc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.SimpleAES
            hsPkgs.string-conversions
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.SimpleAES
              hsPkgs.string-conversions
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }