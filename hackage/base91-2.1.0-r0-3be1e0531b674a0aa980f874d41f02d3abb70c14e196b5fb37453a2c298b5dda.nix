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
      specVersion = "1.8";
      identifier = { name = "base91"; version = "2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ajg";
      author = "Alvaro J. Genial";
      homepage = "https://github.com/ajg/base91";
      url = "";
      synopsis = "A Generic Base91 Encoder & Decoder";
      description = "An implementation of Base91 encoding & decoding of arbitrary bytes (octets)\nto/from characters (all in the ASCII printable range)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          ];
        buildable = true;
        };
      exes = {
        "base91" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base91" or (errorHandler.buildDepError "base91"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base91" or (errorHandler.buildDepError "base91"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }