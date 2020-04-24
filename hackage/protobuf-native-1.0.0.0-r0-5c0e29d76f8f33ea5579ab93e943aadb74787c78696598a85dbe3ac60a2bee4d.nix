{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "protobuf-native"; version = "1.0.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."cplusplus-th" or ((hsPkgs.pkgs-errors).buildDepError "cplusplus-th"))
          ];
        libs = [
          (pkgs."protobuf" or ((hsPkgs.pkgs-errors).sysDepError "protobuf"))
          (pkgs."c++" or ((hsPkgs.pkgs-errors).sysDepError "c++"))
          ];
        buildable = true;
        };
      exes = {
        "protobuf-native-test" = {
          depends = [
            (hsPkgs."protobuf-native" or ((hsPkgs.pkgs-errors).buildDepError "protobuf-native"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."protobuf-native" or ((hsPkgs.pkgs-errors).buildDepError "protobuf-native"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "benchmark" = {
          depends = [
            (hsPkgs."protobuf-native" or ((hsPkgs.pkgs-errors).buildDepError "protobuf-native"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."protobuf" or ((hsPkgs.pkgs-errors).buildDepError "protobuf"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."cplusplus-th" or ((hsPkgs.pkgs-errors).buildDepError "cplusplus-th"))
            (hsPkgs."protocol-buffers-fork" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers-fork"))
            (hsPkgs."hprotoc-fork" or ((hsPkgs.pkgs-errors).buildDepError "hprotoc-fork"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }