{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { liquidhaskell = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "liquidhaskell-cabal-demo"; version = "0.2.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2016-2019 Michael Smith, 2019 Ranjit Jhala";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal-demo#readme";
      url = "";
      synopsis = "Demo of Liquid Haskell integration for Cabal and Stack";
      description = "Please see the\n<https://github.com/spinda/liquidhaskell-cabal-demo/blob/0.2.1.1/README.md README>\non GitHub for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.liquidhaskell-cabal or (pkgs.buildPackages.liquidhaskell-cabal or (errorHandler.setupDepError "liquidhaskell-cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."liquidhaskell-cabal" or (errorHandler.buildDepError "liquidhaskell-cabal"))
        ];
        buildable = true;
      };
      exes = {
        "ffi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."liquidhaskell-cabal" or (errorHandler.buildDepError "liquidhaskell-cabal"))
          ];
          buildable = true;
        };
      };
    };
  }