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
    flags = { shared-llvm = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "llvm-general"; version = "3.5.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Benjamin S. Scarlet and Google Inc.";
      maintainer = "Benjamin S. Scarlet <fgthb0@greynode.net>";
      author = "Benjamin S.Scarlet <fgthb0@greynode.net>";
      homepage = "http://github.com/bscarlet/llvm-general/";
      url = "";
      synopsis = "General purpose LLVM bindings";
      description = "llvm-general is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,\nit uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it\nhandles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not\nonly from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.llvm-config.components.exes.llvm-config or (pkgs.pkgsBuildBuild.llvm-config or (errorHandler.buildToolDepError "llvm-config:llvm-config")))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ];
          buildable = true;
        };
      };
    };
  }