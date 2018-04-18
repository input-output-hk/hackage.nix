{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "system-filepath";
          version = "0.4.11";
        };
        license = "MIT";
        copyright = "John Millikin 2010-2012";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-filesystem/";
        url = "";
        synopsis = "High-level, byte-based file and directory path manipulations";
        description = "";
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