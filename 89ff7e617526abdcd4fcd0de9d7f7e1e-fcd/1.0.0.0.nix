{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fcd";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "faucon.benoit@cegetel.net";
        author = "Benoît Faucon";
        homepage = "https://github.com/Neki/fcd";
        url = "";
        synopsis = "A faster way to navigate directories using the command line.";
        description = "Bookmark directories, then select a bookmark by fuzzy matching. You need to set up a small shell function for this to work properly (see the README).";
        buildType = "Simple";
      };
      components = {
        "fcd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.vty
            hsPkgs.vty-ui
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.process
          ];
        };
        exes = {
          "fcd" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fcd
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.fcd
            ];
          };
        };
      };
    }