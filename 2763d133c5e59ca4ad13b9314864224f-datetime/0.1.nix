{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "datetime";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "nubgames@gmail.com";
        author = "Eric Sessoms <nubgames@gmail.com>";
        homepage = "http://github.com/esessoms/datetime";
        url = "";
        synopsis = "Utilities to make Data.Time.* easier to use.";
        description = "Provides several utilities for easily converting among the\nvarious standard library Date and Time types, and for converting\nbetween these and standard external representations.";
        buildType = "Simple";
      };
      components = {
        datetime = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
          ];
        };
      };
    }