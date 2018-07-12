{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      maintainer = false;
      build-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "byline";
          version = "0.2.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright: (c) 2015 Peter J. Jones";
        maintainer = "Peter Jones <pjones@devalot.com>";
        author = "Peter Jones <pjones@devalot.com>";
        homepage = "http://github.com/pjones/byline";
        url = "";
        synopsis = "Library for creating command-line interfaces (colors, menus, etc.)";
        description = "Byline simplifies writing interactive terminal applications by\nbuilding upon @ansi-terminal@ and @haskeline@.  This makes it\npossible to print messages and prompts that include terminal escape\nsequences such as colors that are automatically disabled when\nstandard input is a file.  It also means that Byline works on both\nPOSIX-compatible systems and on Windows.\n\nThe primary features of Byline include printing messages, prompting\nfor input, and generating custom menus.  It was inspired by the\n@highline@ Ruby library and the @terminal@ library by Craig Roche.";
        buildType = "Simple";
      };
      components = {
        "byline" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.haskeline
            hsPkgs.mtl
            hsPkgs.terminfo-hs
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          "simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.byline
              hsPkgs.text
            ];
          };
          "menu" = {
            depends  = [
              hsPkgs.base
              hsPkgs.byline
              hsPkgs.text
            ];
          };
        };
      };
    }