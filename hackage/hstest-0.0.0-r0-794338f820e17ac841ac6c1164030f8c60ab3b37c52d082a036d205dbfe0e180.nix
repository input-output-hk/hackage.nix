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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hstest"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© Dave Hinton, 2010; portions © Koen Claessen";
      maintainer = "Dave Hinton <beakerchu@googlemail.com>";
      author = "Dave Hinton";
      homepage = "http://bitbucket.org/dave4420/hstest/wiki/Home";
      url = "";
      synopsis = "Tests properties in specified modules via QuickCheck; uses GHC api for speed";
      description = "\n'hstest' looks through all Haskell source files in the current directory (by default), finds all properties to test (properties\nmust have a name that starts 'prop_'), and runs them via QuickCheck.\n\nFor example, suppose you have this Haskell source file called 'mysort.hs':\n\n> mySort xs = ... -- a function you wish to test (definition elided)\n>\n> prop_lengthStaysTheSame xs = length xs == length (mySort xs)\n> prop_sumStaysTheSame xs = sum xs == sum (mySort xs)\n> prop_lowestElementAtStart, prop_highestElementAtEnd :: [Int] -> Bool\n> prop_lowestElementAtStart xs = not (null xs) ==> minimum xs = head (mySort xs)\n> prop_highestElementAtEnd xs = not (null xs) ==> maximum xs = last (mySort xs)\n\nThen to check all these tests, you run\n\n> \$ hstest\n> Failed prop_highestElementAtEnd:\n>  *  [-3,2,-2]\n> mysort.hs: Failed 1 property, passed 3 properties\n\nOops! Fix 'mySort' and try again:\n\n> \$ hstest\n> mysort.hs: Passed 4 properties";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hstest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }