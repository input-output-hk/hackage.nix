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
      specVersion = "1.6";
      identifier = { name = "LibClang"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chetan Taralekar <chetant@gmail.com>";
      author = "Chetan Taralekar <chetant@gmail.com>";
      homepage = "https://github.com/chetant/LibClang/issues";
      url = "";
      synopsis = "Haskell bindings for libclang (a C++ parsing library)";
      description = "LibClang package provides direct bindings to libclang.\n\nThis should be enough for parsing C/C++ code, walking the AST and querying nodes and completion queries.\n\n* NOTE:  When configuring, please ensure llvm-config is in path or provide the location of libclang and llvm includes if not in the default locations using\n\n@ --configure-option=-I... @\n\nYou can also use\n\n@--configure-option=--enable-llvm-shared=LLVMSHAREDLIB@\n\nif you'd like to link to the shared library\n\nAlso use <https://github.com/chetant/LibClang/issues> to report bugs";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ffi" or (errorHandler.buildDepError "ffi"))
          (hsPkgs."greencard" or (errorHandler.buildDepError "greencard"))
        ];
        buildable = true;
      };
    };
  }