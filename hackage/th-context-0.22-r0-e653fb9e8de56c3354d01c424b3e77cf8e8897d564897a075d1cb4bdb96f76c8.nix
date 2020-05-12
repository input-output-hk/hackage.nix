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
      identifier = { name = "th-context"; version = "0.22"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Fox";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/th-context";
      url = "";
      synopsis = "Test instance context";
      description = "Use these functions to decide an a not-quite naive fashion\nwhether an instance already exists that satisfies a given\ncontext.  This can be used to decide whether an instance\nneeds to be generated, as in th-reify-many.  Known limitation:\nthe instances inserted into the InstMap are not fully recognized\nwhen computing the context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl-unleashed" or (errorHandler.buildDepError "mtl-unleashed"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."th-typegraph" or (errorHandler.buildDepError "th-typegraph"))
          ];
        buildable = true;
        };
      tests = {
        "th-context-tests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-unleashed" or (errorHandler.buildDepError "mtl-unleashed"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-context" or (errorHandler.buildDepError "th-context"))
            (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
            (hsPkgs."th-typegraph" or (errorHandler.buildDepError "th-typegraph"))
            ];
          buildable = true;
          };
        };
      };
    }