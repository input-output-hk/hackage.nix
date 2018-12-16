{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskell-src-exts";
        version = "0.2.1";
      };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://www.cs.chalmers.se/~d00nibro/harp/";
      url = "";
      synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
      description = "Haskell-Source with eXtensions (HSX, haskell-src-exts)\nis an extension of the standard haskell-src package,\nand handles most common syntactic extensions to Haskell, including:\n\n* Multi-parameter type classes with functional dependencies\n\n* Empty data declarations\n\n* GADTs\n\n* Implicit parameters (ghc and hugs style)\n\n* Template Haskell (broken for 6.4, needs redoing)\n\nand a few more. Apart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSP-style embedded XML syntax (HSP release imminent).\n\nFor details on usage, please see the website.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ]
          else [ (hsPkgs.base) ]);
        build-tools = [
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }