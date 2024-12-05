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
      specVersion = "3.0";
      identifier = { name = "lawful-conversions"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2022 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/lawful-conversions";
      url = "";
      synopsis = "Lawful typeclasses for bidirectional conversion between types";
      description = "Lawful typeclasses capturing three main patterns of bidirectional mapping. The typeclasses form a layered hierarchy with ascending strictness of laws.\n\n1. `LawfulConversions.IsSome`: Smart constructor\n\n2. `LawfulConversions.IsMany`: Lossy conversion\n\n3. `LawfulConversions.Is`: Isomorphism or lossless conversion\n\n= The conversion problem\n\nHave you ever looked for a @toString@ function? How often do you\nimport @Data.Text.Lazy@ only to call its 'Data.Text.Lazy.fromStrict'? How\nabout importing @Data.ByteString.Builder@ only to call its\n'Data.ByteString.Builder.toLazyByteString' and then importing\n@Data.ByteString.Lazy@ only to call its 'Data.ByteString.Lazy.toStrict'?\n\nThose all are instances of one pattern. They are conversions between\nrepresentations of the same information. Codebases that don't attempt to\nabstract over this pattern tend to be sprawling with this type of\nboilerplate. It's noise to the codereader, it's a burden to the\nimplementor and the maintainer.\n\n= Why another conversion library?\n\nMany libraries exist that approach the conversion problem. However most of\nthem provide lawless typeclasses leaving it up to the author of the\ninstance to define what makes a proper conversion. This results in\ninconsistencies across instances, their behaviour not being evident to\nthe user and no way to check whether an instance is correct.\n\nThis library tackles this problem with a lawful typeclass hierarchy, making it\nevident what any of its instances do and it provides property-tests for you\nto validate your instances.\n\n= Conversions\n\nThe main part of the API is two functions: 'LawfulConversions.to' and 'LawfulConversions.from'. Both\nperform a conversion between two types. The main difference between them\nis in what the first type application parameter specifies. E.g.:\n\n> toString = to @String\n\n> fromText = from @Text\n\nThe types should be self-evident:\n\n> > :t to @String\n> to @String :: IsSome String b => b -> String\n\n> > :t from @Text\n> from @Text :: IsMany Text b => Text -> b\n\nIn other words 'LawfulConversions.to' and 'LawfulConversions.from' let you explicitly specify either the source\nor the target type of a conversion when you need to help the type\ninferencer or the reader.\n\n== Examples\n\n@\nrenderNameAndHeight :: 'Text' -> 'Int' -> 'Text'\nrenderNameAndHeight name height =\n  'LawfulConversions.from' @'Data.Text.Encoding.StrictTextBuilder' $\n    \"Height of \" <> 'LawfulConversions.to' name <> \" is \" <> 'LawfulConversions.to' (show height)\n@\n\n@\ncombineEncodings :: 'Data.ByteString.Short.ShortByteString' -> 'Data.Primitive.ByteArray' -> ['Word8'] -> 'Data.ByteString.Lazy.ByteString'\ncombineEncodings a b c =\n  'LawfulConversions.from' @'Data.ByteString.Builder.Builder' $\n    'LawfulConversions.to' a <> 'LawfulConversions.to' b <> 'LawfulConversions.to' c\n@\n\n= Partial conversions\n\nThis library also captures the pattern of smart constructors via the 'LawfulConversions.IsSome' class, which associates a total 'LawfulConversions.to' conversion with its partial inverse 'LawfulConversions.maybeFrom'.\n\nThis captures the codec relationship between types.\nE.g.,\n\n- Every 'Int16' can be losslessly converted into 'Int32', but not every 'Int32' can be losslessly converted into 'Int16'.\n\n- Every 'Text' can be converted into 'ByteString' via UTF-8 encoding, but not every 'ByteString' forms a valid UTF-8 sequence.\n\n- Every URL can be uniquely represented as 'Text', but most 'Text's are not URLs unfortunately.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lawful-conversions" or (errorHandler.buildDepError "lawful-conversions"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rebase" or (errorHandler.buildDepError "rebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }