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
      identifier = { name = "json-autotype"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014-'2018";
      maintainer = "simons@cryp.to\nmjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype";
      url = "";
      synopsis = "Automatic type declaration for JSON input data";
      description = "Generates datatype declarations with Aeson's `FromJSON` instances\nfrom a set of example \".json\" files.\n\nTo get started you need to install the package,\nand run \"json-autotype\" binary on an input \".json\" file.\nThat will generate a new Aeson-based JSON parser.\n\n\"$ json-autotype input.json -o JSONTypes.hs\"\n\nFeel free to tweak the by changing types of the fields\n- any field type that is instance of `FromJSON` should work.\n\nYou may immediately test the parser by calling it as a script:\n\n\"$ runghc JSONTypes.hs input.json\"\n\nOne can now use multiple input files to generate better type description.\n\nNow with Elm code generation support!\n(If you want your favourite programming language supported too -\nname your price and mail the author.)\n\nSee introduction on  <https://github.com/mgajda/json-autotype>\nfor details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "json-autotype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."json-autotype" or (errorHandler.buildDepError "json-autotype"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            ];
          buildable = true;
          };
        };
      tests = {
        "json-autotype-qc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."json-autotype" or (errorHandler.buildDepError "json-autotype"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            ];
          buildable = true;
          };
        "json-autotype-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."json-autotype" or (errorHandler.buildDepError "json-autotype"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            ];
          buildable = true;
          };
        "json-autotype-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."json-autotype" or (errorHandler.buildDepError "json-autotype"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            ];
          buildable = true;
          };
        };
      };
    }