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
      identifier = { name = "hs-tree-sitter"; version = "13.0.14.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "wenkokke@users.noreply.github.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "High-level bindings for tree-sitter";
      description = "High-level bindings for tree-sitter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hs-tree-sitter".components.sublibs.internal or (errorHandler.buildDepError "hs-tree-sitter:internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat-constptr" or (errorHandler.buildDepError "base-compat-constptr"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hs-tree-sitter-capi" or (errorHandler.buildDepError "hs-tree-sitter-capi"))
          ];
          buildable = true;
        };
      };
    };
  }