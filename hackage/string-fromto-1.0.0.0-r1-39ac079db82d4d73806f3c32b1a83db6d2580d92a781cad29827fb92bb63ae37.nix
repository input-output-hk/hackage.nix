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
      identifier = { name = "string-fromto"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Clovyr LLC";
      maintainer = "patrick@clovyr.io";
      author = "Patrick Nielsen";
      homepage = "https://github.com/clovyr/string-fromto";
      url = "";
      synopsis = "Conversions between common string types, as well as Base16/Base32/Base64.";
      description = "Have you ever found yourself frustrated that you're spending 15-30% of your\ntime in Haskell converting between string types, remembering which module has\nthe `toStrict` function, importing Data.Text.Encoding and\nData.Text.Lazy.Encoding qualified, spending time thinking about how to do\nBase64 encoding, etc.? Or tried to use one of the (excellent) typeclass-based\nstring conversion libraries, only to find yourself adding awkward type\nsignatures to avoid type-inferencing ambiguities?\n\nThis package exports a collection of functions that follow a simple pattern:\n\n@stringTypeAToStringTypeB :: a -> b@\n\nThis way, if you import @Data.String.FromTo@ unqualified, or as part of\nyour Prelude, all you have to think about is which type you want to convert\ninto which other type.\n\nFor convenience, this package also exposes conversions between Base16, Base32,\nand Base64-encoded strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }