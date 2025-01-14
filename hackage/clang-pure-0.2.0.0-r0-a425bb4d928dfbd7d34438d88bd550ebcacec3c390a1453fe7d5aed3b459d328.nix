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
      identifier = { name = "clang-pure"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2014 Google Inc. All Rights Reserved.";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "";
      url = "";
      synopsis = "Pure C++ code analysis with libclang";
      description = "Pure C++ code analysis with libclang.\n\nRefer to <http://clang.llvm.org/doxygen/group__CINDEX.html libclang's documentation> for usage.\nIn general, the naming scheme is @clang_getCursorType -> cursorType@, @CXCursor -> `Cursor`@.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-contra" or (errorHandler.buildDepError "microlens-contra"))
        ];
        libs = [ (pkgs."clang" or (errorHandler.sysDepError "clang")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "find-classes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clang-pure" or (errorHandler.buildDepError "clang-pure"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = false;
        };
        "list-fun-types" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clang-pure" or (errorHandler.buildDepError "clang-pure"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = false;
        };
      };
    };
  }