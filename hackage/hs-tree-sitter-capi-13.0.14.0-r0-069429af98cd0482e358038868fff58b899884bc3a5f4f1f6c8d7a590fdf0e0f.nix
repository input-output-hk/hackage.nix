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
      specVersion = "3.4";
      identifier = { name = "hs-tree-sitter-capi"; version = "13.0.14.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "wenkokke@users.noreply.github.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings for tree-sitter";
      description = "Low-level bindings for tree-sitter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat-constptr" or (errorHandler.buildDepError "base-compat-constptr"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.6.5" && system.isAarch64) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "hs-tree-sitter-capi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat-constptr" or (errorHandler.buildDepError "base-compat-constptr"))
            (hsPkgs."hs-tree-sitter-capi" or (errorHandler.buildDepError "hs-tree-sitter-capi"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tree-sitter-while" or (errorHandler.buildDepError "tree-sitter-while"))
          ];
          buildable = true;
        };
      };
    };
  }