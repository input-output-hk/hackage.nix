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
      identifier = { name = "fst"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Baldur Blöndal, John J. Camilleri";
      author = "Markus Forsberg";
      homepage = "http://www.cse.chalmers.se/alumni/markus/fstStudio/";
      url = "";
      synopsis = "Finite state transducers";
      description = "Fst is an application for construction and running of finite state\ntransducers, as based on the concepts of transducers and regular\nrelations developed by Xerox.  The syntax of Xerox's fst program has\nfunctioned as an inspiration for the syntax of fstStudio.\n\nThe application was written purely in Haskell, and is intended to be\na tool for the Haskell programmer, especially for ones that develop\nlanguage applications.\n\nThis package provides an interactive shell for parsing transducers\nspecified in a specialized FST language. See \"FST.FSTStudio\".\n\nThis package also provides a programmer's interface for building and\napplying transducers. See \"FST.TransducerInterface\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "fststudio" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            ];
          };
        };
      tests = {
        "test-fst" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fst" or (buildDepError "fst"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }