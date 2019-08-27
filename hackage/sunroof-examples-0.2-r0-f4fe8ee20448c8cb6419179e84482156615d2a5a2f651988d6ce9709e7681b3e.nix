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
      specVersion = "1.10";
      identifier = { name = "sunroof-examples"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 The University of Kansas";
      maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
      author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
      homepage = "https://github.com/ku-fpg/sunroof-examples";
      url = "";
      synopsis = "Tests for Sunroof";
      description = "Example applications of the sunroof-compiler and sunroof-server package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sunroof-browser-info" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (buildDepError "Boolean"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        "sunroof-canvas" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (buildDepError "Boolean"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        "sunroof-clock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
            (hsPkgs."Boolean" or (buildDepError "Boolean"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "sunroof-fib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (buildDepError "Boolean"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        "sunroof-unit" = {
          depends = [
            (hsPkgs."sunroof-compiler" or (buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (buildDepError "Boolean"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "sunroof-inplace-shaker" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."shake" or (buildDepError "shake"))
            ];
          };
        };
      };
    }