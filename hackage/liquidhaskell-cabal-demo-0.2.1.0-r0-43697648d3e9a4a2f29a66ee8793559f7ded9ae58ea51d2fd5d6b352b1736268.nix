let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { liquidhaskell = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "liquidhaskell-cabal-demo"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Michael Smith, 2019 Ranjit Jhala";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/liquidhaskell-cabal-demo#readme";
      url = "";
      synopsis = "Demo of Liquid Haskell integration for Cabal and stack";
      description = "Please see the\n<https://github.com/spinda/liquidhaskell-cabal-demo/blob/0.2.1.0/README.md README>\non GitHub for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.liquidhaskell-cabal or (pkgs.buildPackages.liquidhaskell-cabal or (buildToolDepError "liquidhaskell-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."liquidhaskell-cabal" or (buildDepError "liquidhaskell-cabal"))
          ];
        };
      exes = {
        "ffi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."liquidhaskell-cabal" or (buildDepError "liquidhaskell-cabal"))
            ];
          };
        };
      };
    }