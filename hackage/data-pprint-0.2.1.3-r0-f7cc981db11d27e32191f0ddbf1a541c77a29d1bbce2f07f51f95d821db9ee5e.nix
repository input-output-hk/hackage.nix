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
      identifier = { name = "data-pprint"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Prettyprint and compare Data values";
      description = "Prettyprint and compare Data values.\n\n*   Size limit for the output\n\n*   Time limit for the computation\n\n*   Escape exceptions\n\n*   Do not escape unicode characters\n\n*   Comparison: Highlight the first difference\n\n*   Comparison: Yes, No or Maybe results\n\nProbably you need only the 'pprint' and '(===)' functions from the \"Data.PPrint\" module.\n\nUsage examples:\n\n> pprint [1..]\n> pprint \$ repeat [1..]\n> pprint \$ iterate (*10) 1\n> pprint \$ map length \$ replicate 5 [1..] ++ repeat []\n> pprint [2 `div` 0, error \"xxx\", 18, 4 `div` 0]\n> [1..10] === reverse [10,9..1]\n> [1..10] === reverse [10..1]\n> reverse [10..] === [1..]\n> [1..] === [1..99] ++ [101..]\n> ([1..], [1..]) === ([1..], [1..100])\n> (error \"x\", [1..]) === (0 `div` 0, reverse [1..])\n> error (\"xx\" ++ show (length [1..])) === 1\n> error (\"xx\" ++ error \"yy\") === 1\n> (error \$ unlines \$ replicate 300 \"xxxxxxxxxxxxxxxxxxxxxxxxxxx\") === 1\n> pprint ['a'..]\n> pprint \$ \"hello\" ++ [error \"x\"] ++ \"world!\"\n\nSee also <http://pnyf.inf.elte.hu/fp/Show_en.xml>\n\nChanges since 0.1: Refactoring, proper handling of nested errors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          ];
        };
      };
    }