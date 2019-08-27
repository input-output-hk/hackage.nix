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
      identifier = { name = "th-alpha"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Julian K. Arni";
      maintainer = "Julian K. Arni <jkarni@gmail.com>";
      author = "Julian K. Arni";
      homepage = "https://github.com/jkarni/th-alpha";
      url = "";
      synopsis = "Alpha equivalence for TH Exp";
      description = "Compare TH expressions (or clauses, patterns, etc.) for alpha equivalence.\nThat is, compare for equality modulo the renaming of bound variables.\n\n> areExpAEq [| \\x -> x |] [| \\y -> y |]\n> -- True\n\n> do\n>    let x = mkName \"x\"\n>    let y = mkName \"y\"\n>    runQ \$ (LamE [VarP x] (VarE x)) @= (LamE [VarP y] (VarE y))\n> -- True\n\nThis can be useful when for instance testing libraries that use Template\nHaskell - usually correctness is only defined up to alpha equivalence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."th-desugar" or (buildDepError "th-desugar"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."th-alpha" or (buildDepError "th-alpha"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."derive" or (buildDepError "derive"))
            ];
          };
        };
      };
    }