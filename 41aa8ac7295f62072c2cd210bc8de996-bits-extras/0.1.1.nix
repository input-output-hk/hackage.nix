{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bits-extras";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gabriel Wicke <wicke@wikidev.net>";
        author = "Gabriel Wicke <wicke@wikidev.net>";
        homepage = "";
        url = "";
        synopsis = "Efficient atomic and non-atomic bit operations not found in Data.Bits";
        description = "Mostly wraps low-level bit operations provided by GCC builtins, which\ntranslate to specialized instructions where available.\n\nAtomic operations include CAS (compare-and-swap), lock, fetch & add and\nsimilar primitives suitable for low-level shared-memory synchronization.\n\nPrimitives from the 'Extras' subpackage would be useful to have in the proper\n'Data.Bits' package, although this would probably require broader support\nacross different compiler backends.\n\nThe C code dynamically links to @libgcc_s@, which can cause problems in GHCi.\nGHCi does not currently support sonames and tries to open @libgcc_s.so@ while\nignoring e.g. @libgcc_s.so.1@. A possible workaround for GHCi on a linux\nsystem: @ln -s \\/lib\\/libgcc_s.so.1 \\/lib\\/libgcc_s.so@. Let me know about\nany other solutions to this issue for GHCi. Regular GHC compilation uses the\nsystem linker with soname support and does not run into this issue.\n\nRelevant Hackage tickets:\n\n* <http://hackage.haskell.org/trac/ghc/ticket/3563>\n\n* <http://hackage.haskell.org/trac/ghc/ticket/4102>";
        buildType = "Simple";
      };
      components = {
        bits-extras = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.gcc_s ];
        };
      };
    }