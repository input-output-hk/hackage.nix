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
    flags = { th = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "syntactic"; version = "3.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/syntactic";
      url = "";
      synopsis = "Generic representation and manipulation of abstract syntax";
      description = "The library provides a generic representation of type-indexed abstract syntax trees\n(or indexed data types in general). It also permits the definition of open syntax\ntrees based on the technique in Data Types à la Carte [1].\n\n(Note that the difference between version 2.x and 3.0 is not that big. The bump to\n3.0 was done because the modules changed namespace.)\n\nFor more information, see\n\\\"A Generic Abstract Syntax Model for Embedded Languages\\\"\n(ICFP 2012):\n\n* Paper:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic.pdf>\n\n* Slides:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic-slides.pdf>\n\nExample EDSLs can be found in the @examples@ folder.\n\n\\[1\\] W. Swierstra. Data Types à la Carte.\n/Journal of Functional Programming/, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-hash" or (buildDepError "data-hash"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."tree-view" or (buildDepError "tree-view"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."base-orphans" or (buildDepError "base-orphans"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (buildDepError "tagged"))) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (buildDepError "template-haskell"));
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."syntactic" or (buildDepError "syntactic"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      benchmarks = {
        "syntactic-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."syntactic" or (buildDepError "syntactic"))
            ];
          };
        };
      };
    }