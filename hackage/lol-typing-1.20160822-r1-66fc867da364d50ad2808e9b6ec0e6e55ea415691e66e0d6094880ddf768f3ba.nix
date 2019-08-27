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
      dev = false;
      dump = false;
      exe = false;
      prof = false;
      threaded = true;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "lol-typing"; version = "1.20160822"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+lol@autogeree.net>";
      author = "Julien Moutinho <julm+lol@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Type inferencer for LOL (λω language)";
      description = "WARNING: this is a research program\nwritten as I learn and explore /type inferencing/:\nplease understand well by yourself whatever you may take from it;\nany question or contribution being welcome :-)\n\nThis package implements /type inferencing/\nby manipulating /type constraints/\nthrough 3 successive phases:\n1. the 'Collect' phase collects them from some expression,\n2. the 'Order' phase modifies the order in which they will be solved,\n3. the 'Solver' phase solves them according to the logic\nof some /type inference rules/.\n\nSo far, the principles within these phases\nare mainly a rewrite of Bastiaan Heeren's\n<https://hackage.haskell.org/package/Top Top>,\nusing my own code conventions and ideals of simplicity.\nThe most notable change being the use of Roman Cheplyaka's\n<https://hackage.haskell.org/package/monad-classes monad-classes>\n(a little bit augmented):\nto handle the 'Monad' stack building a 'Solver'\n(instead of a homegrown machinery I could not understand well).\nAt this point, only a /bottom-up/ 'Collect', a no-op 'Order'\nand a 'Greedy' 'Solver' are implemented, supporting:\n/monomorphic types/ ('Monotype'),\n/parametric polymorphism/ ('Polytype'),\n/type class polymorphism/ ('Class'),\nand /type synonyms/ ('Synotype').\nThe quite understandable thesis of Bastiaan Heeren\nexplains a lot of this in details:\n<http://www.open.ou.nl/bhr/TopQuality.pdf Top Quality Type Error Messages>.\n\nThe <https://hackage.haskell.org/package/uuagc Attribute Grammar System of Universiteit Utrecht>\nis used to demonstrate how to collect /type constraints/ from an expression ('Expr'),\nand then how to transform this /implicitely typed/ expression into an /explicitely typed/\n<https://hackage.haskell.org/package/lol-calculus lol-calculus> expression\n\nSee also: the <https://hackage.haskell.org/package/helium helium> compiler.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc or (buildToolDepError "uuagc")))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal or (buildToolDepError "uuagc-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."lol-calculus" or (buildDepError "lol-calculus"))
          (hsPkgs."monad-classes" or (buildDepError "monad-classes"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uuagc" or (buildDepError "uuagc"))
          (hsPkgs."uuagc-cabal" or (buildDepError "uuagc-cabal"))
          ];
        };
      tests = {
        "lol-typing-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."lol-calculus" or (buildDepError "lol-calculus"))
            (hsPkgs."lol-typing" or (buildDepError "lol-typing"))
            (hsPkgs."monad-classes" or (buildDepError "monad-classes"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }