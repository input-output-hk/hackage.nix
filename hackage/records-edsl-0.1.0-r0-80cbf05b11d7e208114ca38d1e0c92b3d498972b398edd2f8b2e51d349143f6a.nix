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
      specVersion = "1.12";
      identifier = { name = "records-edsl"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Mike Ledger <mike@quasimal.com>";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "Write less record boilerplate";
      description = "Cut off your boilerplate, eschew boilers entirely, and replace them with\na small teapot perched atop a small but slightly foreboding volcano.\n\nThis package defines a small EDSL to define records.\n\nProvides an eDSL for defining record data-types and a closed vessel in\nwhich fluid (generally water) is heated worth of boilerplate.\n\nDefining a record type in this eDSL rather than plain Haskell gets you:\n\n- Records without clashing names\n\n- Syntax to access fields on records without Hungarian-notation prefixes on\nevery field (via 'GHC.HasField' and 'Optics.LabelOptic')\n\n- Declarative syntax for defining that a field has an external\nrepresentation you want to use for its, for example, @ ToJSON @, @ FromJSON @, or\n@ ToSchema @\n\nThis is accomplished with the help of the excellent \"witch\" library.\n\n- 'ToSchema' instances with per-field field descriptions as per your comment\non each field\n\n- 'ToSchema' instances with per-type descriptions\n\nThe EDSL also lets you extend what instances you get. The 'Deriver' type\ndefines how instances are defined.\n\nExample:\n\nWe *can* write:\n\n> declareSchemaRecords deriveAll \"\"\"\n> record Test --field-prefix=test {\n>   foo :: Int,\n>   bar :: MyType via MyTypeJSONRepr,\n> }\n> \"\"\"\n\nBut maybe you prefer:\n\n> data Test = Test\n>   { testFoo :: Int\n>   , testBar :: MyType\n>   }\n>   deriving stock (Show, Generic, Eq)\n>   deriving (Arbitrary) via (GenericArbitraryU Test)\n>\n> instance O.ToSchema Test where\n>   declareNamedSchema _ = ...\n>   -- ... instance using 'foo' as 'Int' and 'bar' as 'MyTypeJSONRepr'\n>   -- converting 'bar' using @ 'from' @\n>   --\n>   -- I'm so allergic to writing this by hand that I can't even be\n>   -- bothered to put it into an example. Rest assured, it's annoying\n>   -- and easy to make mistakes with.\n>\n> instance O.ToJSON Test where\n>   toJSON _ = ...\n>   toEncoding _ = ...\n>   -- ... instance using 'foo' as 'Int' and 'bar' as 'MyTypeJSONRepr'\n>   -- converting 'bar' using @ 'from' @.\n>\n> instance O.FromJSON Test where\n>   parseJSON = ...\n>   -- ... instance parsing 'foo' as 'Int' and 'bar' as 'MyTypeJSONRepr'\n>   -- converting 'bar' using @ 'from' @\n\nIn actual examples the hand-written code is 8-10 times larger than\nwith the declarative syntax.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."records-edsl-core" or (errorHandler.buildDepError "records-edsl-core"))
          (hsPkgs."records-edsl-deriving-aeson" or (errorHandler.buildDepError "records-edsl-deriving-aeson"))
          (hsPkgs."records-edsl-deriving-openapi3" or (errorHandler.buildDepError "records-edsl-deriving-openapi3"))
          (hsPkgs."records-edsl-deriving-optics" or (errorHandler.buildDepError "records-edsl-deriving-optics"))
          (hsPkgs."records-edsl-deriving-quickcheck" or (errorHandler.buildDepError "records-edsl-deriving-quickcheck"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."records-edsl" or (errorHandler.buildDepError "records-edsl"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
          ];
          buildable = true;
        };
      };
    };
  }