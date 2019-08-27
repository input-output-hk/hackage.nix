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
    flags = {
      build-executables = true;
      linknodes = false;
      buildsearchtree = false;
      exference-dev = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "exference"; version = "1.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/exference";
      url = "";
      synopsis = "Tool to search/generate (haskell) expressions with a given type";
      description = "Type inference takes an expression and tells you its type. This process\ncan be inversed: We recursively create random expression trees while checking\nthat they -so far- match a given input type. At each step we do the backwards\nstep of the inference algorithm step. If you are lucky, this search\nyields one or more expressions.\n\nDjinn is a similar tool that guarantees to always terminate. But the\ncost of that property is that Djinn does not properly handle polymorphic\nqueries - and those are the interesting ones, really :)\n\nExference supports type classes, handles undeclared types well\n(Foo -> Foo yields id for unknown Foo), does _not_ check kinds,\ncan pattern-match on newtypes, supports RankNTypes.\n\nExference reads an environment of function types, data types, type classes\nand instances. The user can add to this environment, but keep in mind that\neach addition enlarges the search space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."pqueue" or (buildDepError "pqueue"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."hood" or (buildDepError "hood"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."multistate" or (buildDepError "multistate"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "exference" = {
          depends = (pkgs.lib).optionals (flags.build-executables) [
            (hsPkgs."exference" or (buildDepError "exference"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."data-pprint" or (buildDepError "data-pprint"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hood" or (buildDepError "hood"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."multistate" or (buildDepError "multistate"))
            ];
          };
        };
      };
    }