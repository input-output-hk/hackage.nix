{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bits-extras";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gabriel Wicke <wicke@wikidev.net>";
      author = "Gabriel Wicke <wicke@wikidev.net>";
      homepage = "";
      url = "";
      synopsis = "Efficient high-level bit operations not found in Data.Bits";
      description = "This package contains efficient implementations of high-level bit operations\nmissing from Data.Bits. The implementation is based on GCC builtins, which\ntranslate to specialized instructions where available.\n\nAll operations in this package can also be (less efficiently) implemented in\nterms of Data.Bits operations.\n\n/Issues:/ A GCC-provided library, @libgcc_s@, is dynamically linked to\nprovide software fallbacks on architectures without instructions\ncorresponding to specific operations. This is currently only expected to work\non Linux systems, and even there can lead to issues with GHCi's custom\nlinker. A workaround for GHCi on a linux system: @ln -s \\/lib\\/libgcc_s.so.1\n\\/lib\\/libgcc_s.so@.\n\nThe current plan for broader support is to replace the libgcc dependency with\nbuilt-in fallbacks in C or Haskell code. This needs to closely follow GCC's\nfall-back behaviour for each architecture. Alternative ideas would be\nappreciated.\n\nRelevant Hackage tickets:\n\n* <http://hackage.haskell.org/trac/ghc/ticket/3563>\n\n* <http://hackage.haskell.org/trac/ghc/ticket/4102>";
      buildType = "Simple";
    };
    components = {
      "bits-extras" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."gcc_s") ];
      };
    };
  }