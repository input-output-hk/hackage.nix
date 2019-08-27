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
    flags = { old-syntactic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "imperative-edsl"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016, Anders Persson, Emil Axelsson, Markus Aronsson";
      maintainer = "emax@chalmers.se";
      author = "Anders Persson, Emil Axelsson, Markus Aronsson";
      homepage = "https://github.com/emilaxelsson/imperative-edsl";
      url = "";
      synopsis = "Deep embedding of imperative programs with code generation";
      description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\" (and optionally\n\"Language.Embedded.CExp\" which provides a simple expression\nlanguage).\n\nExamples can be found in the @examples@ directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."language-c-quote" or (buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."operational-alacarte" or (buildDepError "operational-alacarte"))
          (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
          (hsPkgs."srcloc" or (buildDepError "srcloc"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (if flags.old-syntactic
          then [ (hsPkgs."syntactic" or (buildDepError "syntactic")) ]
          else [
            (hsPkgs."open-typerep" or (buildDepError "open-typerep"))
            (hsPkgs."syntactic" or (buildDepError "syntactic"))
            ]);
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."imperative-edsl" or (buildDepError "imperative-edsl"))
            (hsPkgs."syntactic" or (buildDepError "syntactic"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            ];
          };
        };
      };
    }