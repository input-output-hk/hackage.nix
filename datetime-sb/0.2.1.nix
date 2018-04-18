{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "datetime-sb";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "hackage@stackbuilders.com";
        author = "Eric Sessoms <nubgames@gmail.com>";
        homepage = "http://github.com/stackbuilders/datetime";
        url = "";
        synopsis = "Utilities to make Data.Time.* easier to use.";
        description = "Provides several utilities for easily converting among the\nvarious standard library Date and Time types, and for converting\nbetween these and standard external representations.";
        buildType = "Simple";
      };
      components = {
        datetime-sb = {
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