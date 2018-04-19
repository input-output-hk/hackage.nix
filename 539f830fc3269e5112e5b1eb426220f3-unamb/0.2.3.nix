{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "unamb";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/unamb";
        url = "http://code.haskell.org/unamb";
        synopsis = "Unambiguous choice";
        description = "unamb contains the \"unambiguous choice\" operator \"unamb\", which\nwraps thread racing up in a purely functional, semantically simple\nwrapper.  Originally a part of Reactive, I moved unamb to its own\npackage in order to encourage experimentation.\n\nProject wiki page: <http://haskell.org/haskellwiki/unamb>\n\n&#169; 2008 by Conal Elliott; BSD3 license.\n\nContributions from: Luke Palmer, Spencer Janssen, Sterling Clover,\nBertram Felgenhauer, Peter Verswyvelen, Svein Ove Aas, and Edward Kmett.\nPlease let me know if I've forgotten to list you.";
        buildType = "Simple";
      };
      components = {
        unamb = {
          depends  = [
            hsPkgs.base
            hsPkgs.tag-bits
          ];
        };
        exes = {
          test-unamb = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.checkers
            ];
          };
        };
      };
    }