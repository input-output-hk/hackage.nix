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
      specVersion = "0";
      identifier = {
        name = "haskell-src";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Simon Marlow, Sven Panne and Noel Winstanley";
      homepage = "";
      url = "";
      synopsis = "Manipulating Haskell source code";
      description = "Facilities for manipulating Haskell source code:\nan abstract syntax, lexer, parser and pretty-printer.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }