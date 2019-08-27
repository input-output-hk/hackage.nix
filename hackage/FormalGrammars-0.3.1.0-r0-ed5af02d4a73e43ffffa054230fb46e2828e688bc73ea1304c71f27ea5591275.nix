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
    flags = { examples = false; debug = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "FormalGrammars"; version = "0.3.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2016";
      homepage = "https://github.com/choener/FormalGrammars";
      url = "";
      synopsis = "(Context-free) grammars in formal language theory";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nContext-free grammars in formal language theory are sets of\nproduction rules, non-terminal and terminal symbols. This\nlibrary provides basic data types and functions to manipulate\nsuch grammars.\n\nGrammars can be defined in a small domain-specific language\nthat is very close to typical CFG notation. The DSL parser can\neasily be extended. Grammar products, for example, are\nimplemented as a single additional sub-parser.\n\nThis library also provides the machinery that transforms an\nInside grammar into the corresponding Outside grammar.\n\nStarting with version 0.2.1 it is possible to write multiple\ncontext-free grammars within this framework.\n\nIn addition, TemplateHaskell and QuasiQuoting functionality\nallow embedding thusly defined grammars in Haskell programs.\nADPfusion then turns such a grammar into an efficient dynamic\nprogram. It is also possible to generate Haskell modules that\ncontain the resulting grammar, signature and algebra product.\n\nAlternatives are ansi- or LaTeX-based pretty-printing for users\nthat want to implement their CFG in another language than\nHaskell.\n\nFormal background can be found in a number of papers which are\ngiven in the README.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."trifecta" or (buildDepError "trifecta"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          ];
        };
      exes = {
        "GrammarPP" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
            (hsPkgs."trifecta" or (buildDepError "trifecta"))
            ];
          };
        "NussinovFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "NeedlemanWunschFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "TriNeedleFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }