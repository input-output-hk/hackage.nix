{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hXmixer";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "colin@colinrmitchell.endoftheinternet.org";
        author = "Colin Mitchell";
        homepage = "";
        url = "";
        synopsis = "A Gtk mixer GUI application for FreeBSD";
        description = "hXmixer is a Gtk 3 GUI mixer application for FreeBSD.\nIt is used to set the audio levels of @\\/dev\\/mixer*@ devices.\nTo install this package, make sure that you have the FreeBSD\nports @gtk3@, @ghc@, and @hs-cabal-install@ installed.\n\nThen, enter the following commands to install the application:\n\n@\n% cabal update\n\n% cabal install gtk2hs-buildtools\n\n% cabal install hXmixer\n@";
        buildType = "Simple";
      };
      components = {
        exes = {
          hxmixer = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk3
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.text
            ];
          };
        };
      };
    }