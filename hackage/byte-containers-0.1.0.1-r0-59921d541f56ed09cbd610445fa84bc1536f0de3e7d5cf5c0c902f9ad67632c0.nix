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
      specVersion = "2.2";
      identifier = { name = "byte-containers"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/byte-containers";
      url = "";
      synopsis = "Sets and maps with 8-bit words for keys";
      description = "This library provides variant of @Data.Map@ and @Data.Set@ from\nthe @containers@ library where the key is specialized to @Word8@.\nInternally, this uses a 256-bit bitmask for the presence of keys\nand a @SmallArray@ of values of keys that were present. For example,\nthe map @{2 => Z, 3 => B, 5 => X, 9 => A}@ would be repsented in\nmemory as:\n\n> Bitmask: 0011010001000000... (240 more zero bits)\n> Value Array: Z,B,X,A\n\nThis is optimized for reads. Lookup is @O(1)@. Union is technically\n@O(1)@ but only because the universe of keys is finite. The current\nimplementation always scans through all 256 bits of key space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byte-containers" or (errorHandler.buildDepError "byte-containers"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }