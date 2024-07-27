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
    flags = {
      build-all-modules = false;
      use-ghc-dump = false;
      profile-allzip = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "large-records"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Efficient compilation for large records, linear in the size of the record";
      description = "For many reasons, the internal code generated for modules\nthat contain records is quadratic in the number of record\nfields. For large records (more than 30 fields, say), this\ncan become problematic, leading to large compilation times\nand high memory requirements for ghc. The large-records\nlibrary provides a way to define records that is guaranteed\nto result in ghc core that is /linear/ in the number of\nrecord fields.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test-large-records" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."json-sop" or (errorHandler.buildDepError "json-sop"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."ghc-dump-core" or (errorHandler.buildDepError "ghc-dump-core"))
            (hsPkgs."large-records" or (errorHandler.buildDepError "large-records"))
            (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."record-dot-preprocessor" or (errorHandler.buildDepError "record-dot-preprocessor"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (flags.use-ghc-dump) (hsPkgs."ghc-dump-core" or (errorHandler.buildDepError "ghc-dump-core"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.record-dot-preprocessor.components.exes.record-dot-preprocessor or (pkgs.pkgsBuildBuild.record-dot-preprocessor or (errorHandler.buildToolDepError "record-dot-preprocessor:record-dot-preprocessor")))
          ];
          buildable = true;
        };
      };
    };
  }