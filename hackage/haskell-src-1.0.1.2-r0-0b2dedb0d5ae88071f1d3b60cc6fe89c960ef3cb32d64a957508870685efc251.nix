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
      specVersion = "1.2";
      identifier = {
        name = "haskell-src";
        version = "1.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Simon Marlow, Sven Panne and Noel Winstanley";
      homepage = "";
      url = "";
      synopsis = "Manipulating Haskell source code";
      description = "Facilities for manipulating Haskell source code:\nan abstract syntax, lexer, parser and pretty-printer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell98)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }