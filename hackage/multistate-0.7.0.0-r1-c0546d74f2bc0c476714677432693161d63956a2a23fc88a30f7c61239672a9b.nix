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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "multistate"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jan Bracker, Lennart Spitzner";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Jan Bracker, Lennart Spitzner";
      homepage = "https://github.com/lspitzner/multistate";
      url = "";
      synopsis = "like mtl's ReaderT / WriterT / StateT, but more than one\ncontained value/type.";
      description = "When using multiple Read\\/Write\\/State transformers in the same monad stack,\nit becomes necessary to lift the operations in order to affect a specific\ntransformer.\nUsing heterogeneous lists (and all kinds of GHC extensions magic),\nthis package provides transformers that remove that necessity:\nMultiReaderT\\/MultiWriterT\\/MultiStateT\\/MultiRWST can contain a\nheterogeneous list of values.\n\nSee the <https://github.com/lspitzner/multistate README> for\na longer description.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          ];
        };
      exes = {
        "multistate-example" = {
          depends = (pkgs.lib).optionals (flags.build-example) [
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "multistate-test" = {
          depends = [
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }