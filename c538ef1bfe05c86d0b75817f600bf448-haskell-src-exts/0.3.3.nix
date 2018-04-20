{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskell-src-exts";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
        author = "Niklas Broberg";
        homepage = "http://code.haskell.org/HSP/haskell-src-exts";
        url = "";
        synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
        description = "Haskell-Source with Extensions (HSE, haskell-src-exts)\nis an extension of the standard haskell-src package,\nand handles most common syntactic extensions to Haskell, including:\n\n* Multi-parameter type classes with functional dependencies\n\n* Indexed type families (including associated types)\n\n* Empty data declarations\n\n* GADTs\n\n* Implicit parameters (ghc and hugs style)\n\n* Template Haskell (broken for 6.4+, needs redoing)\n\nand a few more. Apart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSX-style embedded XML syntax (new HSP/HSX release imminent).\n\nFor details on usage, please see the website.";
        buildType = "Simple";
      };
      components = {
        haskell-src-exts = {
          depends  = [
            hsPkgs.base
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.pretty
            ]
            else [ hsPkgs.base ]);
        };
      };
    }