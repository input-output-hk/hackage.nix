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
      specVersion = "1.8";
      identifier = {
        name = "halberd";
        version = "0.1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hesselink@gmail.com";
      author = "Erik Hesselink, Simon Meier, Tom Lokhorst, Roman Cheplyaka";
      homepage = "http://github.com/haskell-suite/halberd/";
      url = "";
      synopsis = "A tool to generate missing import statements for Haskell modules.";
      description = "This tool uses the Haskell Suite [0] to determine\nthe unbound variables and types in your source\ncode, and generate import statements for them. If\nthere are multiple choices, it provides a simple\ninteractive menu for you to choose from. See the\nhome page for more details.\n[0] https://github.com/haskell-suite";
      buildType = "Simple";
    };
    components = {
      "halberd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell-packages)
          (hsPkgs.haskell-names)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.Cabal)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "halberd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.halberd)
            (hsPkgs.haskell-names)
            (hsPkgs.haskell-packages)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.tagged)
          ];
        };
      };
      tests = {
        "halberd-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.halberd)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.haskell-names)
            (hsPkgs.haskell-packages)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.tagged)
            (hsPkgs.split)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }