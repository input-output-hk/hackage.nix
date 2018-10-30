{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskell-src";
        version = "1.0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Simon Marlow, Sven Panne and Noel Winstanley";
      homepage = "";
      url = "";
      synopsis = "Support for manipulating Haskell source code";
      description = "The 'haskell-src' package provides support for manipulating Haskell\nsource code. The package provides a lexer, parser and\npretty-printer, and a definition of a Haskell abstract syntax tree\n(AST). Common uses of this package are to parse or generate Haskell\n98 code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.pretty)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }