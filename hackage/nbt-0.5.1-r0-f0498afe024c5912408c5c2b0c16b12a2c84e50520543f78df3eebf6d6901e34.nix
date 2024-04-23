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
      identifier = { name = "nbt"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam C. Foltzer <acfoltzer@gmail.com>";
      author = "Adam C. Foltzer <acfoltzer@gmail.com>, Stijn van Drongelen <rhymoid@gmail.com>";
      homepage = "https://github.com/acfoltzer/nbt";
      url = "";
      synopsis = "A parser/serializer for Minecraft's Named Binary Tag (NBT)\ndata format.";
      description = "This package includes a data type for the NBT file\nformat, notably used to represent saved data in Minecraft and\nsignificant parts of the Minecraft network protocol.  All twelve\ntags of verion 19133 (needed for Anvil maps) are implemented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      tests = {
        "round-trip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."nbt" or (errorHandler.buildDepError "nbt"))
          ];
          buildable = true;
        };
      };
    };
  }