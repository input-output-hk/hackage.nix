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
      identifier = { name = "rasa"; version = "0.1.12"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa#readme";
      url = "";
      synopsis = "A modular text editor";
      description = "A modular text editor\nThis is only a snippet, see the project's <https://github.com/ChrisPenner/rasa README>.\n\nRasa is a text editor project with a few interesting goals. For better or worse it attempts\nto be as modular as possible. This means that most functionality which would typically be considered to be 'core' in other editors\nis implemented as extensions in Rasa.\nThis approach comes with its own share of pros and cons, for instance:\n\n/Pros/\n\n* Implementing most core functionality as extensions ensures a powerful and elegant extension interface.\n\n* Flexibility; don't like the default cursor implementation? Write your own!\n\n* Adaptability; the core of Rasa is miniscule, you can mix and match extensions to build any editor you want.\n\n/Cons/\n\n* Module cross-dependencies makes the community infrastructure more fragile; We'll likely have to develop a solution to this as a community as time goes on.\n\n* Fragmentation; Not having a single implementation for a given feature means extensions that depend on a feature have to pick a specific implementation to augment. Over time data-structures and types will be standardized into Rasa's core to help alleviate this.\n\nWhile highly experimental, I've found the current API to be quite expressive and adaptable;\nfor instance I was able to implement the notion of multiple cursors using the extension API in less than a day. I hope to keep the learning curve low as development continues.\n\n/Getting Started/\n\nFirst clone the <https://github.com/ChrisPenner/rasa Github repo>\nand try running the example-config included there.\nOnce you get it running (see the <https://github.com/ChrisPenner/rasa/blob/master/README.md README>) then you\ncan customize your keymap to add a few mappings you like.\nThen I'd check out the\n<https://github.com/ChrisPenner/rasa/blob/master/docs/Building-An-Extension.md Building your own extensions guide>.\nIt goes in depth into everything you'd want to know!\n\nIf you have any issues (and I'm sure there'll be a few; it's a new project!) please report them <https://github.com/ChrisPenner/rasa/issues here> and we'll talk about it!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."eve" or (buildDepError "eve"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-lens" or (buildDepError "text-lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."yi-rope" or (buildDepError "yi-rope"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          ];
        };
      tests = {
        "rasa-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rasa" or (buildDepError "rasa"))
            (hsPkgs."eve" or (buildDepError "eve"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."yi-rope" or (buildDepError "yi-rope"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }