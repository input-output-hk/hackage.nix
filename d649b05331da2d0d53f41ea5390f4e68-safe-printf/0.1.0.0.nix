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
      specVersion = "1.10";
      identifier = {
        name = "safe-printf";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/safe-printf";
      url = "";
      synopsis = "Well-typed, flexible and variadic printf for Haskell";
      description = "More type-safe, flexible replacement of variadic printf for Text.Printf.";
      buildType = "Simple";
    };
    components = {
      "safe-printf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }