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
      identifier = { name = "libphonenumber"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2023 Typeable";
      maintainer = "mniip@typeable.io";
      author = "Typeable";
      homepage = "https://github.com/typeable/libphonenumber/";
      url = "";
      synopsis = "Parsing, formatting, and validating international phone\nnumbers";
      description = "This package provides bindings for the C++ version of the\n<https://github.com/google/libphonenumber libphonenumber library>.\nThe bindings currently do not include @AsYouTypeFormatter@\nand @ShortNumberInfo@.\n\nThe interface largely resembles that of the original unified\nC++, Java, and JavaScript version of the library, with some\nminor changes to make the interface more Haskell-like.\n\nThe provided functions are pure, under the assumption that\nwe are the only user of the C++ library, i.e. that no one\nelse has installed a global logger which could observe\nside-effects from library calls.\n\nThe underlying library internally uses UTF-8 encoded byte\nstrings. To avoid decoding overhead where it is unnecessary,\nand to avoid a dependency on @text@, we use 'ByteString'\nthroughout the library instead of 'Data.Text.Text'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = [
          (pkgs."phonenumber" or (errorHandler.sysDepError "phonenumber"))
          (pkgs."protobuf" or (errorHandler.sysDepError "protobuf"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "9.4")) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "spec_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."libphonenumber" or (errorHandler.buildDepError "libphonenumber"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "leak_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libphonenumber" or (errorHandler.buildDepError "libphonenumber"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }