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
    flags = { executables = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "pinchot"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/pinchot";
      url = "";
      synopsis = "Build parsers and ASTs for context-free grammars";
      description = "Pinchot provides a simple language that you use to write a Haskell\nprogram that describes a context-free grammar.  When run, this program\ncreates a value representing the grammar.  Using this value, you can\nautomatically generate data types corresponding to the grammar,\nas well as an Earley parser to parse strings in that grammar.\n\nFor more documentation, see the Haddocks for the main Pinchot module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."Earley" or (buildDepError "Earley"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        };
      exes = {
        "print-postal-grammar" = {
          depends = (pkgs.lib).optionals (flags.executables) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "postal-parser" = {
          depends = (pkgs.lib).optionals (flags.executables) [
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "parrot" = {
          depends = (pkgs.lib).optionals (flags.executables) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        };
      };
    }