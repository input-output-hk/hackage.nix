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
      identifier = { name = "generic-functor"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Li-yao Xia 2020";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://gitlab.com/lysxia/generic-functor";
      url = "";
      synopsis = "Deriving generalized functors with GHC.Generics";
      description = "Derive @fmap@, and other @fmap@-like functions where the\nparameter of the functor could occur anywhere.\n\nSee the README for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ap-normalize" or (errorHandler.buildDepError "ap-normalize"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."generic-functor" or (errorHandler.buildDepError "generic-functor"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }