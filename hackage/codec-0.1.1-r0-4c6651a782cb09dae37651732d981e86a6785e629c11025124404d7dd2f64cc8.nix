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
      specVersion = "1.10";
      identifier = { name = "codec"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "https://github.com/chpatrick/codec";
      url = "";
      synopsis = "First-class record construction and bidirectional serialization";
      description = "Tired of writing complementary @parseJSON@\\/@toJSON@, @peek@\\/@poke@ or\nBinary @get@\\/@put@ functions?\n\n@codec@ provides easy bidirectional serialization of plain Haskell\nrecords in any Applicative context. All you need to do is provide a\nde\\/serializer for every record field in any order you like, and you get\na de\\/serializer for the whole structure. The type system ensures that\nyou provide every record exactly once. It also includes a library for\ngeneral record construction in an Applicative context, of which creating\ncodecs is just one application.\n\nJSON!\n\n> userCodec :: JSONCodec User\n> userCodec = obj \"user object\" $\n> User\n>   $>> f_username      >-< \"user\"\n>   >>> f_userEmail     >-< \"email\"\n>   >>> f_userLanguages >-< \"languages\"\n>   >>> f_userReferrer  >-< opt \"referrer\"\n>\n> instance FromJSON User where\n>   parseJSON = parseVal userCodec\n>\n> instance ToJSON User where\n>   toJSON = produceVal userCodec\n\nBit fields!\n\n> ipv4Codec :: BinaryCodec IPv4\n> ipv4Codec = toBytes $\n>   IPv4\n>     $>> f_version         >-< word8 4\n>     >>> f_ihl             >-< word8 4\n>     >>> f_dscp            >-< word8 6\n>     >>> f_ecn             >-< word8 2\n>     >>> f_totalLength     >-< word16be 16\n>     >>> f_identification  >-< word16be 16\n>     >>> f_flags           >-< word8 3\n>     >>> f_fragmentOffset  >-< word16be 13\n>     >>> f_timeToLive      >-< word8 8\n>     >>> f_protocol        >-< word8 8\n>     >>> f_headerChecksum  >-< word16be 16\n>     >>> f_sourceIP        >-< word32be 32\n>     >>> f_destIP          >-< word32be 32\n>\n> instance Binary IPv4 where\n>   get = parse ipv4Codec\n>   put = produce ipv4Codec\n\nStorable!\n\n> timeSpecCodec :: ForeignCodec TimeSpec\n> timeSpecCodec =\n>   TimeSpec\n>     $>> f_seconds     >-< field (#offset struct timespec, tv_sec)  cInt\n>     >>> f_nanoseconds >-< field (#offset struct timespec, tv_nsec) cInt\n>\n> instance Storable TimeSpec where\n>   peek = peekWith timeSpecCodec\n>   poke = pokeWith timeSpecCodec\n>   ...\n\nAll of these examples use the same types and logic for constructing\nCodecs, and it\\'s very easy to create Codecs for any\nparsing\\/serialization library.\n\nSee \"Data.Codec\" for an introduction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-bits" or (errorHandler.buildDepError "binary-bits"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "Examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-bits" or (errorHandler.buildDepError "binary-bits"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }