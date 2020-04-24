{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { liquidhaskell = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "liquidhaskell-cabal-demo"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Michael Smith, 2019 Ranjit Jhala";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal-demo#readme";
      url = "";
      synopsis = "Demo of Liquid Haskell integration for Cabal and stack";
      description = "Please see the\n<https://github.com/spinda/liquidhaskell-cabal-demo/blob/0.2.0.0/README.md README>\non GitHub for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.liquidhaskell-cabal or (pkgs.buildPackages.liquidhaskell-cabal or ((hsPkgs.pkgs-errors).buildToolDepError "liquidhaskell-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."liquidhaskell-cabal" or ((hsPkgs.pkgs-errors).buildDepError "liquidhaskell-cabal"))
          ];
        buildable = true;
        };
      exes = {
        "ffi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."liquidhaskell-cabal" or ((hsPkgs.pkgs-errors).buildDepError "liquidhaskell-cabal"))
            ];
          buildable = true;
          };
        };
      };
    }