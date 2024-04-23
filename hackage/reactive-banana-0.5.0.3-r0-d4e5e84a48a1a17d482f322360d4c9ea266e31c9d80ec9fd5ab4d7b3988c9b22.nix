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
      specVersion = "1.6";
      identifier = { name = "reactive-banana"; version = "0.5.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Practical library for functional reactive programming (FRP).";
      description = "Reactive-banana is a practical library for Functional Reactive Programming (FRP).\n\nFRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. Thus, the reactive-banana library promises to avoid the spagethetti code commonly used in traditional GUI technologies.\n\nSee the project homepage <http://haskell.org/haskellwiki/Reactive-banana>\nfor a more detailed introduction and features.\n\nStability forecast:\nNo semantic bugs expected.\nSignificant API changes are likely in future versions,\nthough the main interface is beginning to stabilize.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
        ];
        buildable = true;
      };
    };
  }