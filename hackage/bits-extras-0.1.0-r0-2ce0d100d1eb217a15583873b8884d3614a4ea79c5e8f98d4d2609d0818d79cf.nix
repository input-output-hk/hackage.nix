{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bits-extras";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gabriel Wicke <wicke@wikidev.net>";
      author = "Gabriel Wicke <wicke@wikidev.net>";
      homepage = "";
      url = "";
      synopsis = "Efficient atomic and non-atomic bit operations not found in Data.Bits";
      description = "Mostly wraps low-level bit operations provided by GCC\nbuiltins, which translate to specialized instructions\nwhere available.\n\nAtomic operations include CAS\n(compare-and-swap), lock, fetch & add and similar\nprimitives suitable for low-level shared-memory\nsynchronization.\n\nPrimitives from the 'Extras' subpackage would be useful to\nhave in the proper 'Data.Bits' package, although this\nwould probably require broader support across different\ncompiler backends.\n\nRelevant Hackage tickets:\n\n* <http://hackage.haskell.org/trac/ghc/ticket/3563>\n\n* <http://hackage.haskell.org/trac/ghc/ticket/4102>";
      buildType = "Simple";
    };
    components = {
      "bits-extras" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."gcc_s") ];
      };
    };
  }