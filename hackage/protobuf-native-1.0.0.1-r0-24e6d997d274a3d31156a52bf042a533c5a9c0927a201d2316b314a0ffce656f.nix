{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.cplusplus-th)
          ];
        libs = [ (pkgs."protobuf") (pkgs."c++") ];
        };
      exes = {
        "protobuf-native-test" = {
          depends = [
            (hsPkgs.protobuf-native)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            ];
          };
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs.protobuf-native)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            ];
          };
        "benchmark" = {
          depends = [
            (hsPkgs.protobuf-native)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.criterion)
            (hsPkgs.protobuf)
            (hsPkgs.cereal)
            (hsPkgs.cplusplus-th)
            (hsPkgs.protocol-buffers-fork)
            (hsPkgs.hprotoc-fork)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }