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
      identifier = { name = "partial-records"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) mniip 2019";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/partial-records";
      url = "";
      synopsis = "Template haskell utilities for constructing records with\ndefault values";
      description = "\nIf you have a datatype with a lot of default-able fields, e.g.\n\n> data Foo =\n>   { fld1 :: Maybe Int\n>   , fld2 :: Maybe Char\n>   , fld3 :: Word\n>   }\n\nand you want to avoid the the boilerplate of writing all the default values\nevery time you construct a record of this type, you could write a \"default\nvalue\" of this type:\n\n> defaultFoo :: Foo\n> defaultFoo = Foo { fld1 = Nothing, fld2 = Nothing, fld3 = 0 }\n\nYou could then use record modification syntax to make necessary changes to\nthis value. But perhaps you can't/don't want to provide default values for\n/all/ of the fields, but only some of them? You could implement a \"default\nsmart constructor\" that would take the non-optional arguments and then fill in\nthe optional ones like so:\n\n> defaultFoo :: Word -> Foo\n> defaultFoo x = Foo { fld1 = Nothing, fld2 = Nothing, fld3 = x }\n\nBut then you lose the benefit of record syntax: you can't name the fields\nyou're providing values for.\n\nThis package reconciles the two problems: with only a little bit of Template\nHaskell it provides a way to construct a record with optional fields while\nalso letting you refer to the names of those fields. You make two splices:\n\n> mkToPartial ''Foo\n>   -- defines 'mkfld1', 'mkfld2', 'mkfld3'\n> mkFromPartial \"mkFoo\" [t|Foo|] [|Foo { fld1 = Nothing, fld2 = Nothing }\n>   |]\n>   -- defines 'mkFoo'\n\nAnd then you can use them like so:\n\n> val :: Foo\n> val = mkFoo\n>   $ mkfld3 123\n>   ? mkfld1 (Just 456)\n> -- val = Foo { fld1 = Just 456, fld2 = Nothing, fld3 = 123 }\n\nThe Template Haskell splice lets you define default values for a subset of the\nfields, and those defaults will be used when you call @mkFoo@. You can list\nfields in any order, but if you omit a mandatory field (one that doesn't have\na default), that would be a type error at compile time.\n\nYou can make multiple 'Data.Partial.TH.mkFromPartial' splices, this is\noccasionally useful for parameterized types, for example:\n\n> data Bar a =\n>   { bar1 :: Maybe Int\n>   , bar2 :: a\n>   }\n> mkToPartial ''Bar\n> mkFromPartial \"mkBar\" [t|forall a. Bar a|]\n>   [|Bar { bar1 = Nothing }\n>   |]\n>   -- mkBar :: ... -> Bar a, and bar2 is a required field\n> mkFromPartial \"mkBarMaybe\" [t|forall a. Bar (Maybe a)|]\n>   [|Bar { bar1 = Nothing, bar2 = Nothing }\n>   |]\n>   -- mkBarMaybe :: ... -> Bar (Maybe a), and bar2 is an optional field";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }