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
      identifier = { name = "pipes-text"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "Michael Thompson";
      homepage = "https://github.com/michaelt/text-pipes";
      url = "";
      synopsis = "Text pipes.";
      description = "Many of the pipes and other operations defined here mirror those in\nthe `pipes-bytestring` library. Folds like `length` and grouping\noperations like `lines` simply  adjust for the differences between\n`ByteString` and `Text` and `Word8` and `Char`. It is hoped that this\nhomogeneity will aid in learning the terms and programming style associated\nwith both of them.\n\nThe most distinctive addition of the library to that core is the\napparatus for encoding and decoding `Text` and `ByteString`.\n\nAlso defined are some simple functions akin to the `String`\noperations in `Pipes.Prelude`, and others like the utilities in `Data.Text`.\n\nAll of the `IO` operations defined here - e.g `readFile`, `stdout` etc.\n- are conveniences akin to those in `Data.Text.IO` which e.g. try to\nfind the system encoding and use the exceptions defined in the `text`\nlibrary. Proper `IO` in the sense of this library will employ\n`pipes-bytestring` in conjuntion with 'pure' operations like\n`decodeUtf8` and `encodeUtf8` that are defined here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }