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
      specVersion = "3.0";
      identifier = { name = "weave"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://gitlab.com/lysxia/weave";
      url = "";
      synopsis = "Compositional breadth-first walks";
      description = "An experimental control structure for defining breadth-first walks in trees\nand graphs in a compositional manner.\n\n@Weave@ is an applicative transformer for multi-level computations.\nThis library actually defines multiple variants of @Weave@ with different\nperformance profiles. The most useful ones are \"Weave.Lazy\" and\n\"Weave.Oblivious\". Two other variants \"Weave.Strict\" and \"Weave.Endless\"\nare included mainly as curiosities.\n\nThe main application of @Weave@ is to define /breadth-first monadic unfolds/.\nExamples of such unfolds for some general-purpose tree structures can be\nfound under the namespace @Weave.Unfold@, for each variant of @Weave@.\n\nSee also my blog post:\n<https://blog.poisson.chat/posts/2025-03-30-breadth-first-unfolds.html Unfolding trees breadth-first in Haskell>.\n\nInternally, to avoid duplication, those unfolds are implemented as a Backpack\nmixin @Weave.Unfold@. This package might not work with Stack, which doesn't\nsupport Backpack. For minimal dependencies and no backpack, the @weave-core@\nlibrary is also available, containing only the @Weave@ types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."weave".components.sublibs.mixin or (errorHandler.buildDepError "weave:mixin"))
          (hsPkgs."weave-core" or (errorHandler.buildDepError "weave-core"))
        ];
        buildable = true;
      };
      sublibs = {
        "mixin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary-tree" or (errorHandler.buildDepError "binary-tree"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }