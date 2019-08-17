{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "hjugement-protocol"; version = "0.0.7.20190815"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+hjugement@autogeree.net>";
      author = "Julien Moutinho <julm+hjugement@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "A cryptographic protocol for the Majority Judgment.";
      description = "This work-in-progress library aims at implementing an online voting protocol\nnamed <https://eprint.iacr.org/2013/177.pdf Helios-C> (Helios with Credentials)\nby its authors from the <https://www.cnrs.fr/ CNRS>,\nthe <http://www.loria.fr INRIA>\nand the <https://www.univ-lorraine.fr/ Université de Lorraine>:\n<http://www.loria.fr/~cortier/ Véronique Cortier>,\n<https://dgalindo.es/ David Galindo>,\n<http://www.loria.fr/~gaudry/ Pierrick Gaudry>,\n<http://stephane.glondu.net/ Stéphane Glondu>\nand Malika Izabachène.\n\n* A large-public introduction (in french) to Helios-C is available here:\n<https://members.loria.fr/VCortier/files/Papers/Bulletin1024-2016.pdf Bulletin de la société informatique de France – numéro 9, novembre 2016>.\n* A more scientific (yet understandable) introduction (in english) to Belenios\n(an implementation of Helios-C) is available here:\n<https://hal.inria.fr/hal-02066930/document Belenios: a simple private and verifiable electronic voting system>.\n\nThe main properties of this protocol are:\n\n* /fully correct/: the published result are proven to correspond\nto the (sum of) intended votes of the voters,\nwhile accounting for a malicious bulletin board (BB) (adding fake ballots)\nby requiring a registration authority (RA)\n(responsible for generating and sending voters' credentials).\nAssuming that the BB and the RA are not simultaneously dishonest.\n\n* /verifiable/: each voter is able to check that:\nhis\\/her ballot did contribute to the outcome (/individual verifiability/),\nand that the tallying authorities did their job properly (/universal verifiability/).\n\n* /private/: the identities of the voters who cast a vote are not publicly revealed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "hjugement-protocol-test" = {
          depends = [
            (hsPkgs.hjugement-protocol)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "hjugement-protocol-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hjugement-protocol)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }