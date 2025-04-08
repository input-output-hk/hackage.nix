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
      identifier = { name = "isomorphism-class"; version = "0.3.1.1"; };
      license = "MIT";
      copyright = "(c) 2022 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/isomorphism-class";
      url = "";
      synopsis = "Isomorphism typeclass as a lawful solution to the conversion problem";
      description = "= Conversion problem\n\nHow often do you import @Data.Text.Lazy@ only to call @fromStrict@ or @toStrict@?\nHow about importing @Data.ByteString.Builder@ only to call its\n@toLazyByteString@ and then importing\n@Data.ByteString.Lazy@ only to call its @toStrict@?\nHow often do you convert from @DiffTime@ to @NominalDiffTime@ or back?\n\nThese are all instances of one pattern. They are conversions between different\nrepresentations of the same information. Codebases that don't attempt to\nabstract over this pattern tend to be sprawling with this type of\nboilerplate. It's noise to the code reader, it's a burden to implementors\nand maintainers.\n\n= Why another conversion library?\n\nMany libraries exist that approach the conversion problem. However, most of\nthem provide lawless typeclasses, leaving it up to the author of the\ninstance to define what makes a proper conversion. This results in\ninconsistencies across instances, their behavior not being evident to\nthe user and no way to check whether an instance is correct.\n\nThis library tackles this problem with a lawful typeclass, making it\nevident what any of its instances do, and it provides a property-test for you\nto validate your instances.\n\n= The insight\n\nThe key insight of this library is that if you add a requirement for the\nconversion to be lossless and to have a mirror conversion in the opposite\ndirection, there usually appears to be only one way of defining it. That\nmakes it very clear what the conversion does to the user and how to define\nit for the author of the conversion.\nIt also gives clear criteria for validating whether the instances are correct, which can be encoded in property-tests.\n\nThat insight itself stems from an observation that almost all of the\npractical conversions in Haskell share a property: you can restore the\noriginal data from its converted form. E.g., you can get a text from\na text-builder and you can create a text-builder from a text, you can convert\na bytestring into a list of bytes and vice-versa, bytestring to\\/from bytearray,\nstrict bytestring to\\/from lazy, list to\\/from sequence, sequence to/from\nvector, set of ints to\\/from int-set. In other words, it's always a two-way\nstreet with them and there are many instances of this pattern.\n\nA few other accidental findings like encoding this property with recursive\ntypeclass constraints and fine-tuning for the use of\nthe @TypeApplications@ extension resulted in a terse and clear API.\n\n= Other work and acknowledgements\n\n- [lawful-conversions](https://hackage.haskell.org/package/lawful-conversions) - sibling of this library expanding upon the same insights to also cover the patterns of smart construction and canonicalization. It's more involved and has different tradeoffs. Both libraries are maintained, letting their designs compete.\n\nSome ideas and concepts are also shared with the following libraries:\n\n- [control-iso](https://hackage.haskell.org/package/control-iso)\n- [type-iso](https://hackage.haskell.org/package/type-iso)\n- [injections](https://hackage.haskell.org/package/injections)";
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
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
            (hsPkgs."isomorphism-class" or (errorHandler.buildDepError "isomorphism-class"))
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