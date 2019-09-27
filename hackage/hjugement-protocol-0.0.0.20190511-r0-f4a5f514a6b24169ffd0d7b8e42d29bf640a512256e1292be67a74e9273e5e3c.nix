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
      specVersion = "1.24";
      identifier = { name = "hjugement-protocol"; version = "0.0.0.20190511"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+hjugement@autogeree.net>";
      author = "Julien Moutinho <julm+hjugement@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "A cryptographic protocol for the Majority Judgment.";
      description = "This work-in-progress library aims at implementing an online voting protocol\nnamed <https://eprint.iacr.org/2013/177.pdf Helios-C> (Helios with Credentials)\nby its authors from the <https://www.cnrs.fr/ CNRS>,\nthe <http://www.loria.fr INRIA>\nand the <https://www.univ-lorraine.fr/ Université de Lorraine>:\n<http://www.loria.fr/~cortier/ Véronique Cortier>,\n<https://dgalindo.es/ David Galindo>,\n<http://www.loria.fr/~gaudry/ Pierrick Gaudry>,\n<http://stephane.glondu.net/ Stéphane Glondu>\nand Malika Izabachène.\n\n(TODO) Actually, this protocol is adapted a little bit here to better support\na better method of voting known as the <http://libgen.io/book/index.php?md5=BF67AA4298C1CE7633187546AA53E01D Majority Judgment>.\n\n* A large-public introduction (in french) to Helios-C is available here:\n<https://members.loria.fr/VCortier/files/Papers/Bulletin1024-2016.pdf Bulletin de la société informatique de France – numéro 9, novembre 2016>.\n* A more scientific (yet understandable) introduction (in english) to Belenios\n(an implementation of Helios-C) is available here:\n<https://hal.inria.fr/hal-02066930/document Belenios: a simple private and verifiable electronic voting system>.\n\nThe main properties of this protocol are:\n\n* /fully correct/: the published result are proven to correspond\nto the (sum of) intended votes of the voters,\nwhile accounting for a malicious bulletin board (BB) (adding fake ballots)\nby requiring a registration authority (RA)\n(responsible for generating and sending voters' credentials).\nAssuming that the BB and the RA are not simultaneously dishonest.\n\n* /verifiable/: each voter is able to check that:\nhis\\/her ballot did contribute to the outcome (/individual verifiability/),\nand that the tallying authorities did their job properly (/universal verifiability/).\n\n* /private/: the identities of the voters who cast a vote are not publicly revealed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "hjugement-protocol-test" = {
          depends = [
            (hsPkgs."hjugement-protocol" or (buildDepError "hjugement-protocol"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hjugement-protocol-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hjugement-protocol" or (buildDepError "hjugement-protocol"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }