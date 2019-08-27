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
      identifier = { name = "haskell-ml"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 David Banas";
      maintainer = "capn.freako@gmail.com";
      author = "David Banas";
      homepage = "";
      url = "";
      synopsis = "Machine learning in Haskell";
      description = "Provides a very simple implementation of deep (i.e. - multi-layer),\nfully connected (i.e. - _not_ convolutional) neural networks. Hides the type of the\ninternal network structure from the client code, while still providing type safety,\nvia existential type quantification and dependently typed programming techniques,\nala Justin Le. (See [Justin's blog post](https://blog.jle.im/entry/practical-dependent-types-in-haskell-2.html).)\n\nThe API offers a single network creation function: `randNet`, which allows the user\nto create a randomly initialized network of arbitrary internal structure by supplying\na list of integers, each specifying the output width of one hidden layer in the network.\n(The input/output widths are determined automatically by the compiler, via type inference.)\nThe type of the internal structure (i.e. - hidden layers) is existentially hidden, outside\nthe API, which offers the following benefits:\n\n- Client generated networks of different internal structure may be stored in a common list\n(or, other Functorial data structure).\n\n- The exact structure of the network may be specified at run time, via: user input, file I/O, etc.,\nwhile still providing GHC enforced type safety, at compile time.\n\n- Complex networks with long training times may be stored, after being trained, so that they\nmay be recalled and used again, at a later date/time, without having to re-train them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-ml" or (buildDepError "haskell-ml"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            ];
          };
        };
      tests = {
        "fcnTest1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-ml" or (buildDepError "haskell-ml"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        };
      };
    }