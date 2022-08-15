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
      specVersion = "1.12";
      identifier = { name = "ten"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Andrew Pritchard <awpritchard@gmail.com>, Reiner Pope <reinerp@google.com>";
      homepage = "https://github.com/google/hs-ten#readme";
      url = "";
      synopsis = "Functors et al. over arity-1 type constructors";
      description = "This provides a mirror of the traditional typeclass hierarchy for types of\nkind @(k -> Type) -> Type@, or functors from the category __Hask{k}__ to\n__Hask__, where __Hask{k}__ denotes the category whose objects are mappings\nfrom @k@ to @Type@, and whose morphisms are the parametric functions between\nthem.  In general, these functors look like variations on the theme of\n\"polymorphic records\", also frequently described as \"higher-kinded data\".\n\nWe currently provide the following classes, which correspond directly to\ntheir equivalents in \"base\" or \"adjunctions\": 'Functor10', 'Foldable10',\n'Traversable10', 'Applicative10', and 'Representable10'.  Additionally, a\nclass 'Constrained10' provides instances for the argument of each occurrence\nof the type parameter in a value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
          ];
        buildable = true;
        };
      tests = {
        "Traversable10-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
            (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."ten" or (errorHandler.buildDepError "ten"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = true;
          };
        };
      };
    }