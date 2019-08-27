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
      identifier = { name = "HaTeX"; version = "3.13.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "http://daniel-diaz.github.io/projects/hatex";
      url = "";
      synopsis = "The Haskell LaTeX library.";
      description = "This library provides a bridge between LaTeX and Haskell, implementing the LaTeX /syntax/\nin Haskell.\n\nSome of the things you can do with HaTeX are:\n\nWrite LaTeX documents with all the advantages you already have in Haskell (recursion,\ntype system, high order functions, ...), create a LaTeX backend for your own program,\nparse a LaTeX file and obtain its Abstract Syntax Tree (AST), pretty-print Haskell\nvalues in LaTeX, generate TikZ scripts easily, ...\n\nBrowse the @examples@ directory in the source distribution to see some simple examples.\nIt would be good to get you started. The HaTeX User's Guide is available at\n<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."wl-pprint-extras" or (buildDepError "wl-pprint-extras"))
          ];
        };
      tests = {
        "hatex-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }