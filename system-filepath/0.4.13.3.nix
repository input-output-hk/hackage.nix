{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "system-filepath";
          version = "0.4.13.3";
        };
        license = "MIT";
        copyright = "John Millikin 2010-2012";
        maintainer = "FP Complete <michael@fpcomplete.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://github.com/fpco/haskell-filesystem";
        url = "";
        synopsis = "High-level, byte-based file and directory path manipulations";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/system-filepath>.";
        buildType = "Custom";
      };
      components = {
        system-filepath = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.text
          ];
        };
        tests = {
          filesystem_path_tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.chell
              hsPkgs.chell-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.system-filepath
              hsPkgs.text
            ];
          };
        };
      };
    }