{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "preprocessor-tools";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tov@eecs.harvard.edu";
        author = "Jesse A. Tov <tov@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~tov/pubs/haskell-session-types/";
        url = "";
        synopsis = "A framework for extending Haskell's syntax via quick-and-dirty preprocessors";
        description = "This library provides a quick-and-dirty (but often effective)\nmethod for extending Haskell's syntax using a custom\npreprocessor.  It parses Haskell into a bare-bones AST with just\nenough knowledge of the syntax to preserve nesting, and then\nallows transformations on the AST.\n\nSee the package ixdopp\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/ixdopp>)\nfor an example of how to do this.";
        buildType = "Simple";
      };
      components = {
        preprocessor-tools = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.base
            hsPkgs.syb
          ];
        };
      };
    }