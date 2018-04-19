{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "android-activity";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Obsidian Systems LLC 2017";
        maintainer = "maintainer@obsidian.systems";
        author = "Obsidian Systems LLC";
        homepage = "https://github.com/obsidiansystems/android-activity";
        url = "";
        synopsis = "Turn regular Haskell programs into Android Activities";
        description = "";
        buildType = "Simple";
      };
      components = {
        android-activity = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
          ];
        };
      };
    }