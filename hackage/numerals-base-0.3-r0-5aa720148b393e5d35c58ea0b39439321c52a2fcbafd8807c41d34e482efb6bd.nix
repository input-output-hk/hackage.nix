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
      specVersion = "1.8";
      identifier = { name = "numerals-base"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009–2011 Roel van Dijk, Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/roelvandijk/numerals-base";
      url = "";
      synopsis = "Convert numbers to number words";
      description = "This package contains machinery to construct functions that convert\nnumbers to number words. It allows you to write a function which\nconverts a number like 142 to the string \\\"one hundred and\nforty-two\\\".\n\nThe documentation for the \"Text.Numeral\" module contains an high\nlevel overview of the package.\n\nIf you just want to convert numbers to number words in a specific\nlanguage you should probably use the @numerals@ package. That\npackage also contains numerous examples on how to use the functions\nin this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."containers-unicode-symbols" or (buildDepError "containers-unicode-symbols"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          ];
        };
      tests = {
        "test-numerals" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."containers-unicode-symbols" or (buildDepError "containers-unicode-symbols"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        };
      };
    }