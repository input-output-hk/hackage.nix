{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clang-pure";
        version = "0.1.0.3";
      };
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
      "clang-pure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.inline-c)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
        ];
        libs = [ (pkgs."clang") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }