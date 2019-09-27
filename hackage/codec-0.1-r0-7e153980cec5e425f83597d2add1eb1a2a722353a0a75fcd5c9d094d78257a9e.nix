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
      identifier = { name = "codec"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "https://github.com/chpatrick/codec";
      url = "";
      synopsis = "First-class record construction and bidirectional serialization";
      description = "Tired of writing complementary @parseJSON@\\/@toJSON@, @peek@\\/@poke@ or\nBinary @get@\\/@put@ functions?\n\n@codec@ provides easy bidirectional serialization of plain Haskell\nrecords in any Applicative context. All you need to do is provide a\nde\\/serializer for every record field in any order you like, and you get\na de\\/serializer for the whole structure. The type system ensures that\nyou provide every record exactly once. It also includes a library for\ngeneral record construction in an Applicative context, of which creating\ncodecs is just one application.\n\nJSON!\n\n> userCodec :: JSONCodec User\n> userCodec = obj \"user object\" \$\n> User\n>   \$>> f_username      >-< \"user\"\n>   >>> f_userEmail     >-< \"email\"\n>   >>> f_userLanguages >-< \"languages\"\n>   >>> f_userReferrer  >-< opt \"referrer\"\n>\n> instance FromJSON User where\n>   parseJSON = parseVal userCodec\n>\n> instance ToJSON User where\n>   toJSON = produceVal userCodec\n\nBit fields!\n\n> ipv4Codec :: BinaryCodec IPv4\n> ipv4Codec = toBytes \$\n>   IPv4\n>     \$>> f_version         >-< word8 4\n>     >>> f_ihl             >-< word8 4\n>     >>> f_dscp            >-< word8 6\n>     >>> f_ecn             >-< word8 2\n>     >>> f_totalLength     >-< word16be 16\n>     >>> f_identification  >-< word16be 16\n>     >>> f_flags           >-< word8 3\n>     >>> f_fragmentOffset  >-< word16be 13\n>     >>> f_timeToLive      >-< word8 8\n>     >>> f_protocol        >-< word8 8\n>     >>> f_headerChecksum  >-< word16be 16\n>     >>> f_sourceIP        >-< word32be 32\n>     >>> f_destIP          >-< word32be 32\n>\n> instance Binary IPv4 where\n>   get = parse ipv4Codec\n>   put = produce ipv4Codec\n\nStorable!\n\n> timeSpecCodec :: ForeignCodec TimeSpec\n> timeSpecCodec =\n>   TimeSpec\n>     \$>> f_seconds     >-< field (#offset struct timespec, tv_sec)  cInt\n>     >>> f_nanoseconds >-< field (#offset struct timespec, tv_nsec) cInt\n>\n> instance Storable TimeSpec where\n>   peek = peekWith timeSpecCodec\n>   poke = pokeWith timeSpecCodec\n>   ...\n\nAll of these examples use the same types and logic for constructing\nCodecs, and it\\'s very easy to create Codecs for any\nparsing\\/serialization library.\n\nSee \"Data.Codec\" for an introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-bits" or (buildDepError "binary-bits"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "Examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-bits" or (buildDepError "binary-bits"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }