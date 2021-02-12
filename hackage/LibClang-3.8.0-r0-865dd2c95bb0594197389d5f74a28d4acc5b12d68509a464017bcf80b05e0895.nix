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
      specVersion = "1.18";
      identifier = { name = "LibClang"; version = "3.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chetan Taralekar <chetant@gmail.com>, Seth Fowler <mark.seth.fowler@gmail.com>";
      author = "Chetan Taralekar <chetant@gmail.com>";
      homepage = "https://github.com/chetant/LibClang";
      url = "";
      synopsis = "Haskell bindings for libclang (a C++ parsing library)";
      description = "LibClang package provides bindings to libclang.\n\nThis should be enough for parsing C/C++ code, walking the AST and querying nodes and completion queries.\n\n* NOTE: This version is set to build against llvm 3.8.0\n\nPlease use <https://github.com/chetant/LibClang/issues> to report bugs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."clang-3.8" or (errorHandler.sysDepError "clang-3.8")) ];
        pkgconfig = [
          (pkgconfPkgs."ncurses" or (errorHandler.pkgConfDepError "ncurses"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }