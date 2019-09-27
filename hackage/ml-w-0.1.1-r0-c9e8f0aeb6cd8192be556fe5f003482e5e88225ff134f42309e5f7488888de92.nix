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
      specVersion = "1.6";
      identifier = { name = "ml-w"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli <f@mazzo.li>";
      author = "Francesco Mazzoli <f@mazzo.li>";
      homepage = "";
      url = "";
      synopsis = "Minimal ML language to to demonstrate the W type\ninfererence algorithm.";
      description = "\nThis package implements a minimal ML-like language to demonstrate how the W\nalgorithm works.\n\nThe 'ML' module contains the definition of the language in the form of an\nHaskell data type, plus functions to parse files and pretty print the\ndatatype.\n\nThe 'TypeInfer' module contains the W algorithm itself.\n\nThe 'Main' module contains a program that parses and typechecks programs\nreading from standard input.\n\nThe library and executable is compatible with GHC and Hugs (to use Hugs\nwith cabal use the flag @--hugs@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."pretty" or (buildDepError "pretty"));
        buildable = true;
        };
      exes = {
        "ML" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."pretty" or (buildDepError "pretty"));
          buildable = true;
          };
        };
      };
    }