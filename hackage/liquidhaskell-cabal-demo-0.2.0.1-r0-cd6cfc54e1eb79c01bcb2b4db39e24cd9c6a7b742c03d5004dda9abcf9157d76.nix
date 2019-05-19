{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { liquidhaskell = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "liquidhaskell-cabal-demo"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Michael Smith, 2019 Ranjit Jhala";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal-demo#readme";
      url = "";
      synopsis = "Demo of Liquid Haskell integration for Cabal and stack";
      description = "Please see the\n<https://github.com/spinda/liquidhaskell-cabal-demo/blob/0.2.0.1/README.md README>\non GitHub for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.liquidhaskell-cabal or (pkgs.buildPackages.liquidhaskell-cabal))
        ];
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.liquidhaskell-cabal) ]; };
      exes = {
        "ffi" = { depends = [ (hsPkgs.base) (hsPkgs.liquidhaskell-cabal) ]; };
        };
      };
    }