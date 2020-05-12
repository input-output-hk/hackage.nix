{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "hjugement-protocol"; version = "0.0.0.20190428"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+hjugement@autogeree.net>";
      author = "Julien Moutinho <julm+hjugement@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "A cryptographic protocol for the Majority Judgment.";
      description = "This work-in-progress library aims at implementing an online voting protocol\nnamed <https://eprint.iacr.org/2013/177.pdf Helios-C> (Helios with Credentials)\nby its authors from the <https://www.cnrs.fr/ CNRS>,\nthe <http://www.loria.fr INRIA>\nand the <https://www.univ-lorraine.fr/ Université de Lorraine>:\n<http://www.loria.fr/~cortier/ Véronique Cortier>,\n<https://dgalindo.es/ David Galindo>,\n<http://www.loria.fr/~gaudry/ Pierrick Gaudry>,\n<http://stephane.glondu.net/ Stéphane Glondu>\nand Malika Izabachène.\n\n(TODO) Actually, this protocol is adapted a little bit here to better support\na better method of voting known as the <http://libgen.io/book/index.php?md5=BF67AA4298C1CE7633187546AA53E01D Majority Judgment>.\n\nA large-public introduction (in french) to Helios-C is available here:\n<https://members.loria.fr/VCortier/files/Papers/Bulletin1024-2016.pdf Bulletin de la société informatique de France – numéro 9, novembre 2016>.\n\nThe main properties of this protocol are:\n\n* /fully correct/: the published result are proven to correspond\nto the (sum of) intended votes of the voters,\nwhile accounting for a malicious bulletin board (BB) (adding fake ballots)\nby requiring a registration authority (RA)\n(responsible for generating and sending voters' credentials).\nAssuming that the BB and the RA are not simultaneously dishonest.\n\n* /verifiable/: each voter is able to check that:\nhis\\/her ballot did contribute to the outcome (/individual verifiability/),\nand that the tallying authorities did their job properly (/universal verifiability/).\n\n* /private/: the identities of the voters who cast a vote are not publicly revealed.\n\nMore specifically, in this protocol :\n\n* Ballots are encrypted using public-key cryptography\nsecured by the /Discrete Logarithm problem/:\nfinding @x@ in @g^x `mod` p@, where @p@ is a large prime\nand @g@ a generator of @Gq@, the multiplicative subgroup of order @q@,\nin @Fp@ (the finite prime field whose characteristic is @p@).\nHere, @p@ is 2048-bit and @q@ is 256-bit.\nThe signing (Schnorr-like), the encrypting (ElGamal-like)\nand the /Decisional Diffe Hellman/ (DDH) assumption,\nall rely on the hardness of that problem.\n* Ballots are added without being decrypted\nbecause adding (multiplying actually) ciphertexts then decrypting,\nis like decrypting then adding plaintexts (/additive homomorphism/).\nWhich requires to solve the /Discrete Logarithm Problem/\nfor numbers in the order of the number of voters,\nwhich is not hard for small numbers (with a lookup table as here,\nor with Pollard’s rho algorithm for logarithms).\n* The /Schnorr protocol/ is used to prove that a voter has knowledge\nof the secret key used to sign their votes.\nA voter's credentials is a secret key (the signing key)\nthat has a public part (the verification key).\nThe association between the public part and the corresponding voter’s identity\ndoes not need to be known, and actually should not be disclosed to satisfy\ne.g. the French requirements regarding voting systems.\nUsing credentials prevent the submission of duplicated ballots\n(because they are added as an additional input to the random oracle\nin the /non-interactive zero-knowledge/ (NIZK) proofs for ciphertext well-formedness).\nThis allows a testing of duplicates which depends only on the size of the number of voters,\nand thus enables Helios-C to scale for larger elections while attaining correctness.\n* The /Chaum-Pedersen protocol/ (proving that equality of discrete logarithms)\nis used to prove that ciphertexts are well-formed\n(encrypting a 0 or a 1… or any expected natural) without decrypting them.\nWhich is known as a /Disjunctive Chaum-Pedersen/ proof of partial knowledge.\n* A /strong Fiat-Shamir transformation/ is used\nto transform the /interactive zero-knowledge/ (IZK) /Chaum-Pedersen protocol/\ninto a /non-interactive zero-knowledge/ (NIZK) proof, using a SHA256 hash.\n* (TODO) A Pedersen's /distributed key generation/ (DKG) protocol\ncoupled with ElGamal keys (under the DDH assumption),\nis used to have a fully distributed semantically secure encryption.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "hjugement-protocol-test" = {
          depends = [
            (hsPkgs."hjugement-protocol" or (errorHandler.buildDepError "hjugement-protocol"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }