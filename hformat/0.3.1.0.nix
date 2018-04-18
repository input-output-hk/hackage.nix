{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hformat";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexandr Ruchkin";
        homepage = "http://github.com/mvoidex/hformat";
        url = "";
        synopsis = "Simple Haskell formatting";
        description = "String formatting";
        buildType = "Simple";
      };
      components = {
        hformat = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.ansi-terminal
            hsPkgs.text
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.hformat
            ];
          };
        };
      };
    }