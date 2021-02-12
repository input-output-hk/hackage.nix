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
      identifier = { name = "llvm-data-interop"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "A low-level data interoperability binding for LLVM";
      description = "This package converts the LLVM IR (either bitcode files or LLVM\nassembly) into a Haskell data type (defined in llvm-base-types).\nThe conversion uses the LLVM libraries to read bitcode.  It then\ntraverses the IR and produces a Haskell structure that can be\npattern matched against in pure code.\nNote that this library works with LLVM 3.0-3.3.\nThere are incompatible changes in this release relative to\nllvm-data-interop 0.2.0.  See the changelog in llvm-analysis-0.3.0.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."llvm-base-types" or (errorHandler.buildDepError "llvm-base-types"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."unification-fd" or (errorHandler.buildDepError "unification-fd"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dwarf" or (errorHandler.buildDepError "dwarf"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }