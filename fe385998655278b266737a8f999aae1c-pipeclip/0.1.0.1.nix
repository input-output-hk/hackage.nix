{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipeclip";
          version = "0.1.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2015, Peter Harpending.";
        maintainer = "peter@harpending.org";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/pipeclip";
        url = "";
        synopsis = "Open your editor, pipe the output to the system clipboard";
        description = "This opens up your @\$EDITOR@ or @\$VISUAL@ using the\n<https://hackage.haskell.org/package/editor-open editor-open library.> It\nthen takes the edited text and sends it to the X11 clipboard.\n\nAs such, this will only work if you have X11. Translated, this is limited to\nLinux and BSD.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pipeclip = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.editor-open
              hsPkgs.Hclip
              hsPkgs.safe
            ];
          };
        };
      };
    }