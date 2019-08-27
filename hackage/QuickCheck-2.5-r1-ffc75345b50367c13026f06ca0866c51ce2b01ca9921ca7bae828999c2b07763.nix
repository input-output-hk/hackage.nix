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
    flags = { base3 = true; base4 = true; templatehaskell = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "QuickCheck"; version = "2.5"; };
      license = "BSD-3-Clause";
      copyright = "2000-2012 Koen Claessen, 2006-2008 BjÃ¶rn Bringert, 2009-2012 Nick Smallbone";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://code.haskell.org/QuickCheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((if flags.base4
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ]
          else if flags.base3
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."random" or (buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.7" && (compiler.isGhc && (compiler.version).lt "6.13")) (hsPkgs."ghc" or (buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))) ++ (pkgs.lib).optionals (compiler.isGhc && true) ((pkgs.lib).optional (flags.templatehaskell && (compiler.isGhc && (compiler.version).ge "6.12")) (hsPkgs."template-haskell" or (buildDepError "template-haskell")));
        };
      };
    }