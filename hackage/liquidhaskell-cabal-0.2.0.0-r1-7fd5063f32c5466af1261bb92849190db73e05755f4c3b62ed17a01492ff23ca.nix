{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "liquidhaskell-cabal"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Michael Smith, 2017 Matt Chan, 2019 Ranjit Jhala";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal#readme";
      url = "";
      synopsis = "Liquid Haskell integration for Cabal and Stack";
      description = "Provides support for checking projects using Cabal\nand/or stack with LiquidHaskell.\nPlease see the\n<https://github.com/spinda/liquidhaskell-cabal/blob/0.2.0.0/README.md README>\non GitHub for setup and usage instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.Cabal) (hsPkgs.filepath) ];
        };
      };
    }