{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskell-src";
          version = "1.0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "Simon Marlow, Sven Panne and Noel Winstanley";
        homepage = "";
        url = "";
        synopsis = "Support for manipulating Haskell source code";
        description = "The 'haskell-src' package provides support for manipulating Haskell\nsource code. The package provides a lexer, parser and\npretty-printer, and a definition of a Haskell abstract syntax tree\n(AST). Common uses of this package are to parse or generate Haskell\n98 code.";
        buildType = "Simple";
      };
      components = {
        haskell-src = {
          depends  = [
            hsPkgs.haskell98
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.pretty
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }