{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "preprocessor-tools";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/pubs/haskell-session-types";
      url = "";
      synopsis = "A framework for extending Haskell's syntax via quick-and-dirty preprocessors";
      description = "This library provides a quick-and-dirty (but often effective)\nmethod for extending Haskell's syntax using a custom\npreprocessor.  It parses Haskell into a bare-bones AST with just\nenough knowledge of the syntax to preserve nesting, and then\nallows transformations on the AST.\n\nSee the package ixdopp\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/ixdopp>)\nfor an example of how to do this.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.syb)
        ];
      };
    };
  }