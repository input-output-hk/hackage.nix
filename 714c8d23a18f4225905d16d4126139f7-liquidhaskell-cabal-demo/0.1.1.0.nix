{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      liquidhaskell = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "liquidhaskell-cabal-demo";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Michael Smith";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal-demo#readme";
      url = "";
      synopsis = "Demo of Liquid Haskell integration for Cabal and stack";
      description = "Please see the\n<https://github.com/spinda/liquidhaskell-cabal-demo/blob/0.1.1.0/README.md README>\non GitHub for more information.";
      buildType = "Custom";
    };
    components = {
      "liquidhaskell-cabal-demo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.liquidhaskell-cabal)
        ];
      };
      exes = {
        "ffi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.liquidhaskell-cabal)
          ];
        };
      };
    };
  }