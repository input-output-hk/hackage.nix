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
      identifier = { name = "protobuf-native"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, National ICT Australia Limited (NICTA)";
      maintainer = "maxwell.swadling@nicta.com.au";
      author = "Maxwell Swadling";
      homepage = "https://github.com/nicta/protobuf-native";
      url = "";
      synopsis = "Protocol Buffers via C++";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nprotobuf-native uses the code generated from protobuf for C++\nin Haskell.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."cplusplus-th" or (errorHandler.buildDepError "cplusplus-th"))
        ];
        libs = [
          (pkgs."protobuf" or (errorHandler.sysDepError "protobuf"))
          (pkgs."c++" or (errorHandler.sysDepError "c++"))
        ];
        buildable = true;
      };
      exes = {
        "protobuf-native-test" = {
          depends = [
            (hsPkgs."protobuf-native" or (errorHandler.buildDepError "protobuf-native"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."protobuf-native" or (errorHandler.buildDepError "protobuf-native"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "benchmark" = {
          depends = [
            (hsPkgs."protobuf-native" or (errorHandler.buildDepError "protobuf-native"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."protobuf" or (errorHandler.buildDepError "protobuf"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cplusplus-th" or (errorHandler.buildDepError "cplusplus-th"))
            (hsPkgs."protocol-buffers-fork" or (errorHandler.buildDepError "protocol-buffers-fork"))
            (hsPkgs."hprotoc-fork" or (errorHandler.buildDepError "hprotoc-fork"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }