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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "quickcheck-script"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2000-2003, Koen Claessen, John Hughes";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Koen Claessen <koen@cs.chalmers.se>, John Hughes <rjmh@cs.chalmers.se>";
      homepage = "http://www.cs.chalmers.se/~rjmh/QuickCheck/";
      url = "";
      synopsis = "Automated test tool for QuickCheck.";
      description = "A program to invoke quickCheck for all properties in a module (this version invokes ghci, but is easily modified to other interpreters instead).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "quickCheck" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
              ];
          };
        };
      };
    }